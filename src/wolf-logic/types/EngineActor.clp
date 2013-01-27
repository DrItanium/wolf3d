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
; EngineActor.clp - The base class for actors in the world
; Written by Joshua Scoggins (1/26/2013)
;------------------------------------------------------------------------------
(defclass EngineActor 
  (is-a EngineObject)
  (slot x (type NUMBER) (visibility public))
  (slot y (type NUMBER) (visibility public)))
;------------------------------------------------------------------------------
(defclass SimpleEngineActor 
  "Represents an actor that doesn't need to move"
  (is-a EngineActor)
  (multislot visspot)
  (slot shape-num (type INTEGER))
  (multislot flags)
  (slot item-number (type INTEGER)))
;------------------------------------------------------------------------------
(defclass DoorActor 
 "Represents a door within the world"
 (is-a EngineActor)
 (slot is-vertical (type SYMBOL) (allowed-values FALSE TRUE))
 (slot lock)
 (slot action (type SYMBOL) (allowed-symbols open closed opening closing))
 (slot ticcount))
;------------------------------------------------------------------------------
