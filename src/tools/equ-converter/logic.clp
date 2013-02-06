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
(defrule open-target-file
         ?fct <- (convert equ file with ?path)
         =>
         (retract ?fct)
         (bind ?name (gensym*))
         (if (open ?path ?name) then
           (assert (parse equ file ?name))
           else
           (printout werror "ERROR: The given file " ?path " could not be opened" crlf)
           (halt)))
;------------------------------------------------------------------------------
(defrule parse-line
 ?fct <- (parse equ file ?name)
 =>
 (retract ?fct)
 (bind ?result (readline ?name))
 (if (neq ?result EOF) then
     (assert (parse equ file ?name line (explode$ ?result))
             (parse equ file ?name))))
;------------------------------------------------------------------------------
