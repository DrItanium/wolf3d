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
(batch* "EQUConversionLogic.clp")
(deffunction assert-conversion-fact (?from ?to ?in ?out)
             (assert (convert equ file with 
                              (format nil "%s%s" ?from ?in)
                              to
                              (format nil "%s%s" ?to ?out))))
(deffunction from-wolfsrc-assert-conversion-fact (?to ?in ?out) 
             (assert-conversion-fact "../../WOLFSRC/" ?to ?in ?out))
(deffunction assert-wl1-conversion-fact (?in ?out)
             (from-wolfsrc-assert-conversion-fact "../../wolf-logic/resource/wl1/" ?in ?out))
(deffunction assert-wl6-conversion-fact (?in ?out)
             (from-wolfsrc-assert-conversion-fact "../../wolf-logic/resource/wl6/" ?in ?out))
(deffunction assert-spear-conversion-fact (?in ?out)
             (from-wolfsrc-assert-conversion-fact "../../wolf-logic/resource/spear/" ?in ?out))
(deffunction assert-root-conversion-fact (?in ?out)
             (from-wolfsrc-assert-conversion-fact "../../wolf-logic/resource/" ?in ?out))

(assert-root-conversion-fact "GFXV_SDM.EQU" "GFXV_SDM.clp")
(assert-root-conversion-fact "ID_SD.EQU" "ID_SD.clp")
(assert-root-conversion-fact "ID_VL.EQU" "ID_VL.clp")
;wl1
(assert-wl1-conversion-fact "GFXE_WL1.EQU" "GFXE_WL1.clp")
(assert-wl1-conversion-fact "GFXV_WL1.EQU" "GFXV_WL1.clp")
;wl6
(assert-wl6-conversion-fact "GFXE_WL6.EQU" "GFXE_WL6.clp")
(assert-wl6-conversion-fact "GFXV_WL6.EQU" "GFXV_WL6.clp")
;spear
(assert-spear-conversion-fact "GFXV_SOD.EQU" "GFXV_SOD.clp")
(assert-spear-conversion-fact "GFXE_SOD.EQU" "GFXE_SOD.clp")

(assert (to object))
