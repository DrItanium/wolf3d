(batch* "EQUConversionLogic.clp")
(deffunction assert-conversion-fact (?common ?in ?out)
             (assert (convert equ file with 
                              (format nil "%s%s" ?common ?in)
                              to
                              (format nil "%s%s" ?common ?out))))
(deffunction assert-wl1-conversion-fact (?in ?out)
             (assert-conversion-fact "../../wolf-logic/resource/wl1/" ?in ?out))
(deffunction assert-wl6-conversion-fact (?in ?out)
             (assert-conversion-fact "../../wolf-logic/resource/wl6/" ?in ?out))
(deffunction assert-spear-conversion-fact (?in ?out)
             (assert-conversion-fact "../../wolf-logic/resource/spear/" ?in ?out))
(deffunction assert-root-conversion-fact (?in ?out)
             (assert-conversion-fact "../../wolf-logic/resource/" ?in ?out))
   
(assert-root-conversion-fact "GFXV_SDM.EQU" "GFXV_SDM.clp")
(assert-root-conversion-fact "ID_SD.EQU" "IS_SD.clp")
(assert-root-conversion-fact "ID_VL.EQU" "ID_VL.clp")
;wl1
(assert-wl1-conversion-fact "GFXV_WL1.EQU" "GFXV_WL1.clp")
;wl6
(assert-wl6-conversion-fact "GFXE_WL6.EQU" "GFXE_WL6.clp")
(assert-wl6-conversion-fact "GFXV_WL6.EQU" "GFXV_WL6.clp")
;spear
(assert-spear-conversion-fact "GFXV_SOD.EQU" "GFXV_SOD.clp")

(assert (to object))
