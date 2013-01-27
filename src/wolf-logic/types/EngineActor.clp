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
(defclass TickCountSensitive
  "Interface that denotes a given object is sensitive to tic counts"
  (is-a USER)
  (slot tick-count (type NUMBER) (visibility public)))
;------------------------------------------------------------------------------
(defclass EngineActor 
  (is-a EngineObject)
  (slot tile-x (type INTEGER) (range 0 ?VARIABLE) (visibility public))
  (slot tile-y (type INTEGER) (range 0 ?VARIABLE) (visibility public)))
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
  (is-a EngineActor TickCountSensitive)
  (slot is-vertical (type SYMBOL) (allowed-values FALSE TRUE))
  (slot lock)
  (slot action (type SYMBOL) (allowed-symbols open closed opening closing)))
;------------------------------------------------------------------------------
(defclass ThinkingEngineActor
  (is-a EngineActor TickCountSensitive)
  (slot active (type SYMBOL) (allowed-symbols bad-object no yes allways))
  (slot class-type (type SYMBOL) 
        (allowed-symbols nothing player inert guard officer ss dog boss schabb
                         fake mechahitler mutant needle fire bj ghost 
                         realhitler gretel gift fat rocket spectre angel trans 
                         uber will death hrocket spark))
  ;The state class will reference the thinking actor through the parent slot
  (multislot flags)
  (slot distance (type INTEGER))
  (slot direction 
        (type SYMBOL) 
        (allowed-symbols east north-east north north-west west south-west south
                         south-east none))
  (slot x (type FLOAT))
  (slot y (type FLOAT))
  (slot area-number)
  (slot view-x)
  (slot view-height)
  (slot trans-x (type FLOAT))
  (slot trans-y (type FLOAT))
  (slot angle)
  (slot hitpoints)
  (slot speed))
;------------------------------------------------------------------------------
(defclass EngineActorState
 "Stores the actor's state"
 (is-a EngineObject TickCountSensitive)
 (slot rotate (type SYMBOL) (allowed-symbols FALSE TRUE))
 (slot shape-num (type INTEGER))
 (slot action)
 (slot think))
;------------------------------------------------------------------------------
