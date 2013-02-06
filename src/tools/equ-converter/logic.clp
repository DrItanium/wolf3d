;------------------------------------------------------------------------------
;This file is part of wolf3d-logic.
;
;wolf3d-logic is free software: you can redistribute it and/or modify
;it under the terms of the Affero GNU General Public License as published by
;the Free Software Foundation, either version 3 of the License, or
;(at your option) any later version.
;
;wolf3d-logic is distributed in the hope that it will be useful,
;but WITHOUT ANY WARRANTY; without even the implied warranty of
;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;Affero GNU General Public License for more details.
;
;You should have received a copy of the Affero GNU General Public License
;along with wolf3d-logic.  If not, see <http://www.gnu.org/licenses/>.
;------------------------------------------------------------------------------
; logic.clp - contains the EQU converter logic
; Written by Joshua Scoggins (2/6/2013)
;------------------------------------------------------------------------------
(defclass IntermediateForm
  "Represents the value bound to a given pair"
  (is-a USER)
  (slot id)
  (slot value))
;------------------------------------------------------------------------------
(defrule open-target-file-stdout
         ?fct <- (convert equ file with ?path)
         =>
         (retract ?fct)
         (bind ?name (gensym*))
         (if (open ?path ?name) then
           (assert (parse equ file ?name)
                   (output to t))
           else
           (printout werror "ERROR: The given file " ?path " could not be opened" crlf)
           (halt)))
;------------------------------------------------------------------------------
(defrule open-target-file
         ?fct <- (convert equ file with ?path to ?outPath)
         =>
         (retract ?fct)
         (bind ?name (gensym*))
         (bind ?name2 (gensym*))
         (if (and (open ?path ?name) 
                  (open ?outPath ?name2 "a")) then
           (assert (parse equ file ?name)
                   (output to ?name2))
           else
           (printout werror "ERROR: The given file " ?path " or " ?outPath " could not be opened" crlf)
           (halt)))
;------------------------------------------------------------------------------
(defrule parse-line
         (declare (salience 1))
         ?fct <- (parse equ file ?name)
         =>
         (retract ?fct)
         (bind ?result (readline ?name))
         (if (neq ?result EOF) then
           (assert (parse equ file ?name line (explode$ ?result))
                   (parse equ file ?name))
           else 
           (close ?name)))
;------------------------------------------------------------------------------
(defrule replace-equals-sign
         ?fct <- (parse equ file ?name line ?b ?id&:(eq ?id =) ?a)
         =>
         (retract ?fct)
         (assert (parse equ file ?name line ?b eq ?a)))
;------------------------------------------------------------------------------
(defrule retract-empty-form 
         (declare (salience -1))
         ?fct <- (parse equ file ?name line)
         =>
         (retract ?fct))
;------------------------------------------------------------------------------
(defrule build-intermediate-form
         (declare (salience -1))
         ?fct <- (parse equ file ?name line ?id eq ?value)
         =>
         (retract ?fct)
         (make-instance of IntermediateForm (id ?id) (value ?value)))
;------------------------------------------------------------------------------
(defrule convert-intermediate-form-to-global-variable
         (declare (salience -1))
         (to global-variable)
         (output to ?n)
         (object (is-a IntermediateForm) 
                 (id ?id) 
                 (value ?value))
         =>
         (format ?n "(defglobal *?%s* = %d)%n" ?id ?value))
;------------------------------------------------------------------------------
(defrule convert-intermediate-form-to-object
         (declare (salience -1))
         (to object)
         (output to ?n)
         (object (is-a IntermediateForm) 
                 (id ?id) 
                 (value ?value))
         =>
         (format ?n "([%s] of Entry (parent nil) (id %s) (value %d))%n" ?id ?id ?value))
;------------------------------------------------------------------------------
