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
; IntermediateForm.clp - Contains a simple key/value class to store
; intermediate values acquired from parsing
;
; Written by Joshua Scoggins (2/6/2013)
;------------------------------------------------------------------------------
(defclass types::IntermediateForm
  "Represents the value bound to a given pair"
  (is-a USER)
  (slot id)
  (slot value))
;------------------------------------------------------------------------------
