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
; EngineGameState.clp - Contains the structures that describes the gamestate 
; Written by Joshua Scoggins (1/26/2013)
;------------------------------------------------------------------------------
(defclass EngineGameState 
  "Represents the game variables such as life count and such"
  (is-a EngineObject)
  (slot difficulty (type INTEGER SYMBOL))
  (slot current-map (type INTEGER SYMBOL))
  (slot old-score (type INTEGER))
  (slot score (type INTEGER))
  (slot next-extra (type INTEGER))
  (slot lives (type INTEGER))
  (slot health (type INTEGER))
  (slot ammo (type INTEGER))
  (slot keys (type INTEGER))
  (slot best-weapon 
        (type SYMBOL) 
        (allowed-symbols knife pistol machinegun chaingun))
  (slot weapon 
        (type SYMBOL) 
        (allowed-symbols knife pistol machinegun chaingun))
  (slot chosen-weapon 
        (type SYMBOL) 
        (allowed-symbols knife pistol machinegun chaingun))
  (slot face-frame (type INTEGER))
  (slot attack-frame (type INTEGER))
  (slot attack-count (type INTEGER))
  (slot weapon-frame (type INTEGER))
  (slot episode (type INTEGER))
  (slot secret-count (type INTEGER))
  (slot treasure-count (type INTEGER))
  (slot kill-count (type INTEGER))
  (slot secret-total (type INTEGER))
  (slot treasure-total (type INTEGER))
  (slot kill-total (type INTEGER))
  (slot time-count (type INTEGER))
  (slot kill-x (type INTEGER))
  (slot kill-y (type INTEGER))
  (slot victory (type SYMBOL) (allowed-symbols FALSE TRUE)))
;------------------------------------------------------------------------------
