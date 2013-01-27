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
; EngineDataEntry.clp - Represents a data entry used to describe a piece of
; data 
; Written by Joshua Scoggins (1/26/2013)
;------------------------------------------------------------------------------
(defclass EngineDataEntry
          (is-a EngineObject)
          (slot index (type NUMBER))
          (slot data-type))
;------------------------------------------------------------------------------
