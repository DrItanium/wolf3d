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
(definstances id-sd-instances
([sdm_Off] of Entry (parent nil) (id sdm_Off) (value 0))
([sdm_PC] of Entry (parent nil) (id sdm_PC) (value 1))
([sdm_AdLib] of Entry (parent nil) (id sdm_AdLib) (value 2))
([smm_Off] of Entry (parent nil) (id smm_Off) (value 0))
([smm_AdLib] of Entry (parent nil) (id smm_AdLib) (value 1))
([sds_Off] of Entry (parent nil) (id sds_Off) (value 0))
([sds_SoundSource] of Entry (parent nil) (id sds_SoundSource) (value 1))
([sds_SoundBlaster] of Entry (parent nil) (id sds_SoundBlaster) (value 2))
([pcTimer] of Entry (parent nil) (id pcTimer) (value 42h))
([pcTAccess] of Entry (parent nil) (id pcTAccess) (value 43h))
([pcSpeaker] of Entry (parent nil) (id pcSpeaker) (value 61h))
([pcSpkBits] of Entry (parent nil) (id pcSpkBits) (value 3))
([alChar] of Entry (parent nil) (id alChar) (value 20h))
([alScale] of Entry (parent nil) (id alScale) (value 40h))
([alAttack] of Entry (parent nil) (id alAttack) (value 60h))
([alSus] of Entry (parent nil) (id alSus) (value 80h))
([alWave] of Entry (parent nil) (id alWave) (value 0e0h))
([alFreqL] of Entry (parent nil) (id alFreqL) (value 0a0h))
([alFreqH] of Entry (parent nil) (id alFreqH) (value 0b0h))
([alFeedCon] of Entry (parent nil) (id alFeedCon) (value 0c0h))
([alEffects] of Entry (parent nil) (id alEffects) (value 0bdh)))
