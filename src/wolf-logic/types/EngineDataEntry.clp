;------------------------------------------------------------------------------
; LICENSED UNDER THE ID SOFTWARE LICENSE
;------------------------------------------------------------------------------
; ModuleHeader.clp - Contains the entry point into the engine module for wolf3d
;------------------------------------------------------------------------------
(defclass EngineDataEntry
          (is-a EngineObject)
          (slot index (type NUMBER))
          (slot data-type))
;------------------------------------------------------------------------------
