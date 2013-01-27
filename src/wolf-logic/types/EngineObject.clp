;------------------------------------------------------------------------------
; LICENSED UNDER THE ID SOFTWARE LICENSE
;------------------------------------------------------------------------------
; EngineObject.clp - Base object type for all objects in the Wolf3d expert
; system.
;------------------------------------------------------------------------------
(defclass EngineObject
  (is-a USER)
  (slot id (type SYMBOL))
  (slot parent (type SYMBOL INSTANCE)))
;------------------------------------------------------------------------------
(defmessage-handler EngineObject init after ()
                    (bind ?self:id (instance-name-to-symbol 
                                     (instance-name ?self))))
;------------------------------------------------------------------------------
