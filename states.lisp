(cl:in-package :fistmage.game)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass start-state ()
  ((started-at :initform (real-time-seconds))))




;;;;;;; ART ;;;;;;;;


(gamekit:register-resource-package
 :keyword
 (asdf:system-relative-pathname :sundust "assets/"))

(define-image :cult_outdoors "cult_outdoors.png")

(define-image :cult_outdoors_night "cult_outdoors_night.png")

(define-image :cult_corridors "cult_corridors.png")

(define-image :slimene_room "slimene_room.png")

(define-image :underground "underground.png")

(define-image :underground2 "underground2.png")


(define-image :lem_dialog "lem_dialog.png")

(define-image :lem_dialog_mask "lem_dialog_mask.png")

(define-image :dys_dialog "dy_dialog.png")

(define-image :slimene_dialog "slimene_dialog.png")

(define-image :slimene_dialog2 "slimene_dialog2.png")

(define-image :cultist_dialog "cultist_dialog.png")

(define-image :cultist_dialog2 "cultist_dialog2.png")

(define-image :random_dialog "random_dialog.png")

(define-image :random_dialog2 "random_dialog2.png")

(define-image :random_dialog3 "random_dialog3.png")


(define-image :ui_dialog_window "ui_dialog_window.png")



(defmethod fistmage:button-pressed ((this start-state) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-2))

(define-font :fonty "../Poppins-Regular.ttf")



(defparameter *fancy-font* nil)
(defmethod initialize-instance :after ((this start-state) &key)
  (setf *fancy-font* (make-font :fonty 36)))

(defparameter *font-color* (vec4 0.3 0.3 0.2 1))


(defmethod fistmage:draw ((this start-state))
  (draw-image (vec2 0 0) :cult_outdoors)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Damn, damn, damn. I was looking for her for weeks, maybe" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "even months." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-2 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-2) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-3))


(defmethod fistmage:draw ((this state-2))
  (draw-image (vec2 0 0) :cult_outdoors)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Time is wearing thin. Like it's changed by the radiation - like" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "everything is now. Everything. Even my aunt Dys." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-3 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-3) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-4))


(defmethod fistmage:draw ((this state-3))
  (draw-image (vec2 0 0) :cult_outdoors)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "I remember her going out some mornings - only to return in a couple" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "of days." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-4 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-4) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-5))


(defmethod fistmage:draw ((this state-4))
  (draw-image (vec2 0 0) :cult_outdoors)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "But then she started returning home every day. And a couple of weeks" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "later she made me the gift." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))


;;;;; ТУТ НУЖЕН ШОУ ФЕЙД ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-5 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-5) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-6))


(defmethod fistmage:draw ((this state-5))
  (draw-image (vec2 0 0) :cult_outdoors)
  (draw-image (vec2 800 0) :lem_dialog)
  (draw-image (vec2 200 0) :dys_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Dys - past]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Your mother gave this horn to me, Lem. I kept it, even though we" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "stopped talking to each other. Maybe I was under a charm, huh?" (vec2 209 65) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-6 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-6) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-7))


(defmethod fistmage:draw ((this state-6))
  (draw-image (vec2 0 0) :cult_outdoors)
  (draw-image (vec2 800 0) :lem_dialog)
  (draw-image (vec2 200 0) :dys_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Dys - past]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "She said: 'Even if you feel like no one understands you," (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "someone definitely will. And you will definitely understand someone'." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-7 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-7) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-8))


(defmethod fistmage:draw ((this state-7))
  (draw-image (vec2 0 0) :cult_outdoors)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "But I, clearly, didn't understand. One day she just disappeared." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "I searched for her, and searched, and searched. And finally I found." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-8 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-8) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-9))


(defmethod fistmage:draw ((this state-8))
  (draw-image (vec2 0 0) :cult_outdoors)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "You don't need much to get information these days - just fresh water," (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "non-toxic food. Not much for someone whose aunt is such a hoarder." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-9 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-9) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-10))


(defmethod fistmage:draw ((this state-9))
  (draw-image (vec2 0 0) :cult_outdoors)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Wait. I need to admit it. Dys was dragged in the Cult of Siren. With" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "this freaky Slimene as theirs leader." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-10 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-10) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-11))


(defmethod fistmage:draw ((this state-10))
  (draw-image (vec2 0 0) :cult_outdoors)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Ugh! I knew her newly found interest in religion would bring us trouble." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "But what could I do?" (vec2 209 65) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-11 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-11) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-12))


(defmethod fistmage:draw ((this state-11))
  (draw-image (vec2 0 0) :cult_outdoors)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Cult's idea of living in the surface with modifyed body..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "..too beautiful, too irreal." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-12 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-12) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-13))


(defmethod fistmage:draw ((this state-12))
  (draw-image (vec2 0 0) :cult_outdoors)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Anyway, now I know there she is. I'm gonna save Dys," (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "even if it means I won't return back." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-13 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-13) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-13-1))


(defmethod fistmage:draw ((this state-13))
  (draw-image (vec2 0 0) :cult_outdoors)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Save Dys. And kill Slimene." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))


;;;;;;; ВТОРАЯ СЦЕНА ;;;;;;;
;;;;; ТУТ НУЖЕН ШОУ ФЕЙД ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-13-1 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-13-1) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-14))

  (defparameter *title-font* nil)
(defmethod initialize-instance :after ((this state-13-1) &key)
  (setf *title-font* (make-font :fonty 90)))

(defparameter *title-color* (vec4 1 1 1 1))

(defmethod fistmage:draw ((this state-13-1))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "TEMPLE" (vec2 520 350) :font *title-font* :fill-color *title-color*)
  )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




(defclass state-14 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-14) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-15))


(defmethod fistmage:draw ((this state-14))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Slimene, our deity, bless Diana, the daughter of Sirene!" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-15 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-15) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-16))


(defmethod fistmage:draw ((this state-15))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 2]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Bless her! Bless her!" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-16 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-16) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-17))


(defmethod fistmage:draw ((this state-16))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "...blob~" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-17 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-17) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-18))


(defmethod fistmage:draw ((this state-17))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Accept our humble gifts, o slimy one.~" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-18 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-18) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-19))


(defmethod fistmage:draw ((this state-18))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 2]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "It's just as you like it, your slime grace. Two fools," (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "who broke the rules of our church. Thay are fresh." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-19 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-19) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-20))


(defmethod fistmage:draw ((this state-19))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "O let us be cursed whith plague, if you would not like this gift." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-20 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-20) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-21))


(defmethod fistmage:draw ((this state-20))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 2]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "We would give to you all our day, as we gave to you all our lives," (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "but the new priest is waiting, your slime grace. Let there be slime!" (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-21 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-21) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-22))


(defmethod fistmage:draw ((this state-21))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Let there be slime. We'll leave you alone with your gift." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;ТУТ НУЖЕН ШОУ ФЕЙД;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-21 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-21) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-22-1))


(defmethod fistmage:draw ((this state-21))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 410 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "...blob..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "//...I am sorry...//" (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; CЦЕНА 3 ;;;;;;;;;;;;
;;;;ТУТ НУЖЕН ШОУ ФЕЙД;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-22-1 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-22-1) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-22))


(defmethod fistmage:draw ((this state-22-1))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "HALLWAY" (vec2 480 350) :font *title-font* :fill-color *title-color*)
  )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-22 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-22) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-23))


(defmethod fistmage:draw ((this state-22))
  (draw-image (vec2 0 0) :cult_corridors)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 2]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Sometimes it's like I can hear words behind their blob's... It's wei-" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-23 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-23) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-24))


(defmethod fistmage:draw ((this state-23))
  (draw-image (vec2 0 0) :cult_corridors)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-24 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-24) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-25))


(defmethod fistmage:draw ((this state-24))
  (draw-image (vec2 0 0) :cult_corridors)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 2]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Oh! Um... You're already here. Let there be slime." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-25 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-25) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-26))


(defmethod fistmage:draw ((this state-25))
  (draw-image (vec2 0 0) :cult_corridors)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Let there be slime. Lem, right?" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-26 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-26) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-27))


(defmethod fistmage:draw ((this state-26))
  (draw-image (vec2 0 0) :cult_corridors)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Yes. Let there be slime... I guess." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-27 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-27) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-28))


(defmethod fistmage:draw ((this state-27))
  (draw-image (vec2 0 0) :cult_corridors)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Oh, no, Lem. These words are for the priests. You need to go through" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "the Meeting first, and then through the Immersion. Alone with our deity." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-28 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-28) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-29))


(defmethod fistmage:draw ((this state-28))
  (draw-image (vec2 0 0) :cult_corridors)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Believe me, I am ready. I am more ready then any other priest..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




(defclass state-29 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-29) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-30-1))


(defmethod fistmage:draw ((this state-29))
  (draw-image (vec2 0 0) :cult_corridors)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 2]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Then we must not wait. You don't want them to bore, do you?" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;; CЦЕНА 4 ;;;;;;;;;;;;
;;;;ТУТ НУЖЕН ШОУ ФЕЙД;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-30-1 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-30-1) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-30))


(defmethod fistmage:draw ((this state-30-1))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "Later..." (vec2 480 350) :font *title-font* :fill-color *title-color*)
  )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-30 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-30) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-31))


(defmethod fistmage:draw ((this state-30))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Let there be slime, o slimy one. That's the new priest I've...?" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-31 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-31) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-32))


(defmethod fistmage:draw ((this state-31))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "BLOB BLOB BLOB" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-32 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-32) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-33))


(defmethod fistmage:draw ((this state-32))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "How weird. They've never done this before. Usually they" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "show their divine face only in the end." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-33 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-33) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-34))


(defmethod fistmage:draw ((this state-33))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "BLOB BLOB BLOB BLOB BLOB" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-34 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-34) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-35))


(defmethod fistmage:draw ((this state-34))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "?.." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-35 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-35) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-36))


(defmethod fistmage:draw ((this state-35))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\ BLOB... blob... Y-blob-you...\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-36 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-36) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-37))


(defmethod fistmage:draw ((this state-36))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "They... this thing... it can talk?" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-37 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-37) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-38))


(defmethod fistmage:draw ((this state-37))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Oh, you are about them. It is too musch to take at once, I assume." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "This divinity... I can understand. Give yourself some time." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-38 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-38) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-39))


(defmethod fistmage:draw ((this state-38))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\I know you can do it... I ~blob~ I can feel it...\\." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




(defclass state-39 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-39) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-40))


(defmethod fistmage:draw ((this state-39))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "I can... do what?" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




(defclass state-40 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-40) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-41))


(defmethod fistmage:draw ((this state-40))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Ahem?.." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-41 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-41) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-42))


(defmethod fistmage:draw ((this state-41))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\Kill me.\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-42 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-42) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-43))


(defmethod fistmage:draw ((this state-42))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "What?!" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-43 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-43) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-44))


(defmethod fistmage:draw ((this state-43))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "I am afraid you are not ready yet, Lem. But we... um, we will keep our" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "eyes on you. You can try again in a week, if you will." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-44 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-44) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-45))


(defmethod fistmage:draw ((this state-44))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\Kill me, human Lem.\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-45 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-45) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-46))


(defmethod fistmage:draw ((this state-45))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "...oh, I definitely will." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-46 ()
  ((started-at :initform (real-time-seconds))))



(defmethod fistmage:button-pressed ((this state-46) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-47))


(defmethod fistmage:draw ((this state-46))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "ONE WEEK LATER" (vec2 380 355) :font *title-font* :fill-color *title-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-47 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-47) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-48))


(defmethod fistmage:draw ((this state-47))
  (draw-image (vec2 0 0) :cult_corridors)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Cleaning up dust." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-48 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-48) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-49))


(defmethod fistmage:draw ((this state-48))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Cleaning up slimy goo." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-49 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-49) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-50))


(defmethod fistmage:draw ((this state-49))
  (draw-image (vec2 0 0) :cult_corridors)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Cleaning up dust - again..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-50 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-50) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-51))


(defmethod fistmage:draw ((this state-50))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Also met Dys. She didn't recognise me. What did they do to her?" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-51 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-51) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-52))


(defmethod fistmage:draw ((this state-51))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Cleaning up dust... oh, wait, no. Slimy dust. That's new." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-52 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-52) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-53))


(defmethod fistmage:draw ((this state-52))
  (draw-image (vec2 0 0) :cult_corridors)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "And all of this just to be alone with this monster. So I can..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "...so I can kill them." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-53 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-53) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-54))


(defmethod fistmage:draw ((this state-53))
  (draw-image (vec2 0 0) :cult_corridors)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Why do they want to die? Is it some kind of trap?" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-54 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-54) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-55))


(defmethod fistmage:draw ((this state-54))
  (draw-image (vec2 0 0) :cult_corridors)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "It doesn't matter. Even if it is - now we want the same thing." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;ЗДЕСЬ НУЖЕН ШОУФЕЙД;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-55 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-55) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-56))


(defmethod fistmage:draw ((this state-55))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog_mask)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Slimene, our deity, bless Lem, the son of Sirene!" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-56 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-56) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-57))


(defmethod fistmage:draw ((this state-56))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 510 0) :lem_dialog_mask)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Bless him! Bless him!" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-57 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-57) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-58))


(defmethod fistmage:draw ((this state-57))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 320 0) :lem_dialog_mask)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\bl..ob I knew you'd... blob- you'd come//" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-58 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-58) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-60))


(defmethod fistmage:draw ((this state-58))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 320 0) :lem_dialog_mask)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Of course. I can't miss a chance to kill the beast like you. Never." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-60 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-60) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-60_new-1))


(defmethod fistmage:draw ((this state-60))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "Lem swung a knife at Slimene." (vec2 150 350) :font *title-font* :fill-color *title-color*)
  )






(defclass state-60_new-1 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-60_new-1) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-60_new-2))


(defmethod fistmage:draw ((this state-60_new-1))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "There was not even a cut in them." (vec2 100 350) :font *title-font* :fill-color *title-color*)
  )




(defclass state-60_new-2 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-60_new-2) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-60_new-3))


(defmethod fistmage:draw ((this state-60_new-2))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "Lem swung again and again." (vec2 170 350) :font *title-font* :fill-color *title-color*)
  )




(defclass state-60_new-3 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-60_new-3) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-61))


(defmethod fistmage:draw ((this state-60_new-3))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "All wounds healed in a flash." (vec2 190 350) :font *title-font* :fill-color *title-color*)
  )





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-61 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-61) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-62))


(defmethod fistmage:draw ((this state-61))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 320 0) :lem_dialog_mask)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Now I know why these cultist desire the body from slime..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "You can't be hurt! Damn." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-62 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-62) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-63))


(defmethod fistmage:draw ((this state-62))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 320 0) :lem_dialog_mask)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\These people hurt me every day. But not with a knife\\." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\With words\\." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-63 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-63) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-64))


(defmethod fistmage:draw ((this state-63))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 320 0) :lem_dialog_mask)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Wait, what are you talking about? No, other question." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "question. Why are you so willing to die?" (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-64 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-64) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-65))


(defmethod fistmage:draw ((this state-64))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 320 0) :lem_dialog_mask)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\I don't want to kill anymore.\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\And I don't even live anyway.\\" (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-65 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-65) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-66))


(defmethod fistmage:draw ((this state-65))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 320 0) :lem_dialog_mask)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "What do you mean?" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-66 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-66) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-67))


(defmethod fistmage:draw ((this state-66))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 320 0) :lem_dialog_mask)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\They see in me someone I am not.\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\Deity, that can turn a human into someone like myself.\\" (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-67 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-67) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-68))


(defmethod fistmage:draw ((this state-67))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 320 0) :lem_dialog_mask)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\They don't see me as I am. I don't want to kill.\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\All I wand is to be heard!\\" (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-68 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-68) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-69))


(defmethod fistmage:draw ((this state-68))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 320 0) :lem_dialog_mask)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\I want to live, but I can't.\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\Kill me, Lem. Knife won't do it, but...\\" (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-69 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-69) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-70))


(defmethod fistmage:draw ((this state-69))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 320 0) :lem_dialog_mask)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "No, stop! Stop. I need to think." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-70 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-69) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-71))


(defmethod fistmage:draw ((this state-69))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 320 0) :lem_dialog_mask)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\bl... Lem?.. ob\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-71 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-71) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-72))


(defmethod fistmage:draw ((this state-71))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 320 0) :lem_dialog_mask)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Damn. I can't kill you." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-72 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-72) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-73))


(defmethod fistmage:draw ((this state-72))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 320 0) :lem_dialog_mask)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\?!\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-73 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-73) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-74))


(defmethod fistmage:draw ((this state-73))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 320 0) :lem_dialog_mask)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "You have feelings. You have compassion." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "You are not the monster I thought you to be." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-74 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-74) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-75))


(defmethod fistmage:draw ((this state-74))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 320 0) :lem_dialog_mask)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "I am not the monster either. I can't kill someone" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "just because I don't understand them." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-75 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-75) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-76-1))


(defmethod fistmage:draw ((this state-75))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 320 0) :lem_dialog_mask)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "We will leave. Now. You know a lot about this cult, and you" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "can help me save Dys. I know a place where we can stay." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;НУЖЕН ШОУФЕЙД;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-76-1 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-76-1) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-76))


(defmethod fistmage:draw ((this state-76-1))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "UNDERWORLD" (vec2 430 350) :font *title-font* :fill-color *title-color*)
  )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-76 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-76) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-77))


(defmethod fistmage:draw ((this state-76))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Subway - the human's last resort." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-77 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-77) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-78))


(defmethod fistmage:draw ((this state-77))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "There used to be trains here," (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "but now the only technology nearby is fading fire." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-78 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-78) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-79))


(defmethod fistmage:draw ((this state-78))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 150 0) :random_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Underground's inhabitant]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "What an abomination!" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-79 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-79) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-80))


(defmethod fistmage:draw ((this state-79))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 150 0) :random_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\blob... do I... really look like an abomination?\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-80 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-80) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-81))


(defmethod fistmage:draw ((this state-80))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 150 0) :random_dialog2)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Underground's inhabitant]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "If it eats my children, who will be responsible?!" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-81 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-81) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-82))


(defmethod fistmage:draw ((this state-81))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 150 0) :random_dialog2)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\I won't ''eat'' anyone! I swear! I haven't for a long time...\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-82 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-82) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-83))


(defmethod fistmage:draw ((this state-82))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 150 0) :random_dialog3)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Underground's inhabitant]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Priests are looking for this freaking beast. They'll come" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "to us any moment!" (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-83 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-83) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-84))


(defmethod fistmage:draw ((this state-83))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 150 0) :random_dialog3)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "What if we give you... more water and seeds? May we stay" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "another day here then?" (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-84 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-84) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-86))


(defmethod fistmage:draw ((this state-84))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 150 0) :random_dialog2)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Underground's inhabitant]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Well... okay. But we will be watching you two." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Especially this monster." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-85 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-85) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-86))


(defmethod fistmage:draw ((this state-85))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 150 0) :random_dialog2)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Underground's inhabitant]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Well... okay. But we will be watching you two. Especially" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "this monster." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-86 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-86) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-87))


(defmethod fistmage:draw ((this state-86))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 150 0) :random_dialog3)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Underground's inhabitant]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Just leave already. I can't stand this blob's, urgh.." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-87 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-87) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-88))


(defmethod fistmage:draw ((this state-87))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "I guess we shoul find another place. I'm, sorry, I... I don't" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
    (draw-text "understand, why they can't hear you." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-88 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-88) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-89))


(defmethod fistmage:draw ((this state-88))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\I don't... I don't know. B-b-blob.\\I..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-89 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-89) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-90))


(defmethod fistmage:draw ((this state-89))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Weird, huh? You don't even say 'blob' that much..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;ЗДЕСЬ НУЖЕН ШОУ ФЕЙД;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-90 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-90) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-91))


(defmethod fistmage:draw ((this state-90))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 200 0) :cultist_dialog)
  (draw-image (vec2 150 0) :dys_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Dys - hypnotised]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Find. The deity. To survive in the dead world. To become like the deity." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-91 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-91) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-93))


(defmethod fistmage:draw ((this state-91))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 200 0) :cultist_dialog)
  (draw-image (vec2 150 0) :dys_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Dys! Dys, can you hear me? You don't have to obey the cult!" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-92 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-92) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-93))


(defmethod fistmage:draw ((this state-92))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 200 0) :cultist_dialog)
  (draw-image (vec2 150 0) :dys_dialog)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Dys! Dys, can you hear me? You don't have to obey the cult!" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;ЗДЕСЬ НУЖЕН ШОУ ФЕЙД;;;;;;;;;;

(defclass state-93 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-93) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-94))


(defmethod fistmage:draw ((this state-93))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 200 0) :cultist_dialog)
  (draw-image (vec2 150 0) :dys_dialog)
  (draw-image (vec2 510 0) :random_dialog3)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Underground's inhabitant]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Fuck, it's the priests! I told y-... okay, doesn't matter, run!" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;ЗДЕСЬ НУЖЕН ШОУ ФЕЙД;;;;;;;;;;

(defclass state-94 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-94) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-95))


(defmethod fistmage:draw ((this state-94))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 200 0) :cultist_dialog)
  (draw-image (vec2 150 0) :dys_dialog)
  (draw-image (vec2 510 0) :random_dialog2)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Underground's inhabitant]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Where are my children? I can't leave without them! Geba? Pan?!" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-95 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-95) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-96))


(defmethod fistmage:draw ((this state-95))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "My child.. ren... save... them..." (vec2 150 350) :font *title-font* :fill-color *title-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-96 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-96) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-97))


(defmethod fistmage:draw ((this state-96))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "B-b-b-blobobobbo-b-" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-97 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-97) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-98))


(defmethod fistmage:draw ((this state-97))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Dys won't hurt you. I swear. Do you hear me?" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-98 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-98) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-99))


(defmethod fistmage:draw ((this state-98))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "B-b...l..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-99 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-99) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-100))


(defmethod fistmage:draw ((this state-99))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "She'll remember me. Hypnosys, some kind of drugs or anything" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "else - she'll remember me." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-100 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-100) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-101))


(defmethod fistmage:draw ((this state-100))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "And that means you'll be safe, Slimene." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-101 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-101) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-102))


(defmethod fistmage:draw ((this state-101))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\That's not why I feel bad. I don't want to be safe.\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-102 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-102) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-103))


(defmethod fistmage:draw ((this state-102))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\I want everyone else to be safe. They are dying... because of...\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-103 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-103) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-104))


(defmethod fistmage:draw ((this state-103))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Listen, it isn't your fault. It's only the Cult's." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-104 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-104) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-105))


(defmethod fistmage:draw ((this state-104))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\..kill me, Lem. And all of this will be over.\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-105 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-105) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-106))


(defmethod fistmage:draw ((this state-105))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "But... even if I agreed... you can't be hurt, remember?" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-106 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-106) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-107))


(defmethod fistmage:draw ((this state-106))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\I waited for it so long.\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-107 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-107) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-108))


(defmethod fistmage:draw ((this state-107))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\Kill me. Knife won't do it, but the fire will.\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-108 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-108) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-109))


(defmethod fistmage:draw ((this state-108))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "No... no, how could I ever be thinking about it..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-109 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-109) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-110))


(defmethod fistmage:draw ((this state-109))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\Please, Lem. Stop all of this.\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-110 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-110) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-111))


(defmethod fistmage:draw ((this state-110))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\I don't want to hear their screams anymore. And they won't ever" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "hear mine.\\" (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-111 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-111) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-112))


(defmethod fistmage:draw ((this state-111))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\They are dying because of me again and again.\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\I can't be the monster anymore.\\" (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-112 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-112) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-113))


(defmethod fistmage:draw ((this state-112))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "I... I understand. But... But what should I do..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; ВЫБОР 1 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-113 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-113) (button (eql :a)))
  (fistmage:transition-to 'state-114))

  (defmethod fistmage:button-pressed ((this state-113) (button (eql :d)))
  (fistmage:transition-to 'state-500))


(defmethod fistmage:draw ((this state-113))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 510 0) :lem_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "> PRESS A TO SAVE SLIMENE <" (vec2 480 120) :font *fancy-font* :fill-color *font-color*)
  (draw-text "> PRESS D TO KILL SLIMENE <" (vec2 488 80) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;УБИТЬ СЛАЙМИН;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-500 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-500) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-501))


(defmethod fistmage:draw ((this state-500))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "Fire almost burn out - but it couldn't stop" (vec2 400 390) :font *fancy-font* :fill-color *title-color*)
    (draw-text "someone, who yearns death as much as Slimene." (vec2 355 320) :font *fancy-font* :fill-color *title-color*)
  )

 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ;;;;;ЗДЕСЬ НУЖЕН ШОУ ФЕЙД;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-501 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-501) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-502))


(defmethod fistmage:draw ((this state-501))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :dys_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Dys]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Are you... Is that you, Lem?" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-502 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-502) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-503))


(defmethod fistmage:draw ((this state-502))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :dys_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Dys? You remembered me! Like I said..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-503 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-503) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-504))


(defmethod fistmage:draw ((this state-503))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :dys_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Dys]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Yes. Althought I didn't want this." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-504 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-504) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-505))


(defmethod fistmage:draw ((this state-504))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :dys_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Dys]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "You... you killed that poor creature." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-505 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-505) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-506))


(defmethod fistmage:draw ((this state-505))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :dys_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "But they asked me to. They asked themselves! And I..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-506 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-506) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-507))


(defmethod fistmage:draw ((this state-506))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :dys_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Dys]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Whatever they did - it is you who killed them." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-507 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-507) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-508))


(defmethod fistmage:draw ((this state-507))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :dys_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Dys]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "And nothing can be changed now." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-508 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-508) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-509))


(defmethod fistmage:draw ((this state-508))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :dys_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Dys]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Shit! We could've change it all!" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-509 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-509) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-510))


(defmethod fistmage:draw ((this state-509))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :dys_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Dys]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "We could've..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;ЗДЕСЬ НУЖЕН ШОУ ФЕЙД;;;;;;;;;;
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-510 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-510) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-511))


(defmethod fistmage:draw ((this state-510))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 170 0) :cultist_dialog2)
  (draw-image (vec2 450 0) :cultist_dialog)
  (draw-image (vec2 720 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultists]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "O deity, bless your priests, whom are following you to the other side!" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;ЗДЕСЬ НУЖЕН ШОУФЕЙД;;;;;;;;;;
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-511 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-511) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-512))


(defmethod fistmage:draw ((this state-511))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "Maybe it isn't too late" (vec2 150 350) :font *fancy-font* :fill-color *title-color*)
    (draw-text "to change everything after all?" (vec2 150 250) :font *fancy-font* :fill-color *title-color*)
  )

 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-512 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-512) (button (eql :mouse-left)))
  (fistmage:transition-to 'start-state))


(defmethod fistmage:draw ((this state-511))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "BAD END" (vec2 500 350) :font *title-font* :fill-color *title-color*)
  )

;;;;;;;;;;;;; ТУТ БЫЛ BAD END ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;; ЗДЕСЬ НУЖЕН ШОУ ФЕЙД ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-114()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-114) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-114-1))


(defmethod fistmage:draw ((this state-114))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "No. Sorry, but I can't." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-114-1()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-114-1) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-114-2))


(defmethod fistmage:draw ((this state-114-1))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 320 0) :lem_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "BLOB?!" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-114-2()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-114-2) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-114-3))


(defmethod fistmage:draw ((this state-114-2))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Dys]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "?.." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-114-3()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-114-3) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-114-4))


(defmethod fistmage:draw ((this state-114-3))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "We'll find another way. I promise." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-114-4()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-114-4) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-114-5))


(defmethod fistmage:draw ((this state-114-4))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Dys]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Are you... Is that you, Lem?" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-114-5()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-114-5) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-114-6))


(defmethod fistmage:draw ((this state-114-5))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Dys? You remembered me!" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-114-6()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-114-6) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-114-7))


(defmethod fistmage:draw ((this state-114-6))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Dys]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "I remembered your brave heart, my boy. You wouldn't" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "harm an innocent creature." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-114-7()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-114-7) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-114-8))


(defmethod fistmage:draw ((this state-114-7))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Dys]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "But now we need to run. Quick, follow me, I know this" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "tunnels like the back of my hand." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-114-8()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-114-8) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-114-9))


(defmethod fistmage:draw ((this state-114-8))
  (draw-image (vec2 0 0) :underground)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Dys]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Huh, no wonder. Okay, let's go." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-114-9 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-114-9) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-114-100))


(defmethod fistmage:draw ((this state-114-9))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "LATER" (vec2 530 350) :font *title-font* :fill-color *title-color*)
  )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-114-100 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-114-100) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-115))


(defmethod fistmage:draw ((this state-114-100))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 800 0) :lem_dialog)
  (draw-image (vec2 200 0) :dys_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Dys]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "I heard about more poor souls, hurt by the cult. They just" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "won't stop looking for them." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-115 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-115) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-116))


(defmethod fistmage:draw ((this state-115))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 800 0) :lem_dialog)
  (draw-image (vec2 200 0) :dys_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "...yeah." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-116 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-116) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-117))


(defmethod fistmage:draw ((this state-116))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\Again? It's fifth report this week...\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-117 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-117) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-118))


(defmethod fistmage:draw ((this state-117))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\I... I can't do this anymore...\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-118 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-118) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-119))


(defmethod fistmage:draw ((this state-118))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Slimene! Um, I haven't seen you there..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-119 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-119) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-121))


(defmethod fistmage:draw ((this state-119))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Okay, you know what? Bad news isn't all that's happening." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "There is something good in this world." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-120 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-120) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-121))


(defmethod fistmage:draw ((this state-120))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Okay, you know what? Bad news isn't all that's happening." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "There is something good in this world." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-121 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-121) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-122))


(defmethod fistmage:draw ((this state-121))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "I found a real mushroom today. Can you imagine? A mushroom," (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "just like we collected with my mom." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-122 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-122) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-123))


(defmethod fistmage:draw ((this state-122))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\Mom... orange?..\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-123 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-123) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-124))


(defmethod fistmage:draw ((this state-123))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Dys]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Oh, I wish I could understand them. But I can't hear anything" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "besides the blob's." (vec2 209 65) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-124 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-124) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-125))


(defmethod fistmage:draw ((this state-124))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "I wanna tell you something... I hope you won't think I'm crazy." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-125 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-125) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-126))


(defmethod fistmage:draw ((this state-125))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Dys]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Lem, I raised you. If someone is crazy after this, it's me." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Go on, tell me." (vec2 209 65) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-126 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-126) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-127))


(defmethod fistmage:draw ((this state-126))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "I... I can understand them. Everything they are saying." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Their name is Slimene." (vec2 209 65) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-127 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-127) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-128))


(defmethod fistmage:draw ((this state-127))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Dys]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Really? I knew you are special, but didn't know how much..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "What are they saying?" (vec2 209 65) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-128 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-128) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-129))


(defmethod fistmage:draw ((this state-128))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Spectacular stuff. But I don't think I'm special." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-129 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-129) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-130))


(defmethod fistmage:draw ((this state-129))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Remember what my mother told you when she gave you" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
    (draw-text "the horn?" (vec2 209 65) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-130 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-130) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-131))


(defmethod fistmage:draw ((this state-130))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "She said: 'Even if you feel like no one understands you," (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "someone definitely will. And you will definitely understand someone'." (vec2 209 65) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-131 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-131) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-132))


(defmethod fistmage:draw ((this state-131))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Dys]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Yes, I remember... You thing that horn is responsible?" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-132 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-132) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-133))


(defmethod fistmage:draw ((this state-132))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "I know how that sounds, but..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-133 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-133) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-134))


(defmethod fistmage:draw ((this state-133))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 150 0) :lem_dialog)
  (draw-image (vec2 510 0) :dys_dialog)
  (draw-image (vec2 650 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Lem]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Yes... maybe I may... try, too... what do..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-134 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-134) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-135))


(defmethod fistmage:draw ((this state-134))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\Sometimes I, too, can't understand them.\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-135 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-135) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-136))


(defmethod fistmage:draw ((this state-135))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\Their voices sounds like an alien music to me.\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
    (draw-text "\\I never heard any music, but I can imagine it.\\" (vec2 209 65) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-136 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-136) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-137))


(defmethod fistmage:draw ((this state-136))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\Music brings calmness. Like when everyone is safe.\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-137 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-137) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-138))


(defmethod fistmage:draw ((this state-137))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\Music brings calmness. Like when everyone is safe.\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-138 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-138) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-139))


(defmethod fistmage:draw ((this state-138))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 410 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\When my friends are safe.\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-139 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-139) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-140))


(defmethod fistmage:draw ((this state-139))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\I... I need to go back, to the cult. At night, when no one" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "will see me.\\" (vec2 209 65) :font *fancy-font* :fill-color *font-color*)
  )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defclass state-140 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-140) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-141))


(defmethod fistmage:draw ((this state-140))
  (draw-image (vec2 0 0) :underground2)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\I must stop this massacre - and never ever again put Lem" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "and Dys in danger.\\" (vec2 209 65) :font *fancy-font* :fill-color *font-color*)
  )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-141 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-141) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-142))


(defmethod fistmage:draw ((this state-141))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "NEAR THE TEMPLE" (vec2 370 350) :font *title-font* :fill-color *title-color*)
  )



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-142 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-142) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-143))


(defmethod fistmage:draw ((this state-142))
  (draw-image (vec2 0 0) :cult_outdoors_night)
  (draw-image (vec2 250 0) :slimene_dialog)
  (draw-image (vec2 650 0) :cultist_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "O our deity! You returned to us!" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-143 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-143) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-144))


(defmethod fistmage:draw ((this state-143))
  (draw-image (vec2 0 0) :cult_outdoors_night)
  (draw-image (vec2 250 0) :slimene_dialog)
  (draw-image (vec2 650 0) :cultist_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Get them." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-144 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-144) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-145))


(defmethod fistmage:draw ((this state-144))
  (draw-image (vec2 0 0) :cult_outdoors_night)
  (draw-image (vec2 250 0) :slimene_dialog)
  (draw-image (vec2 650 0) :cultist_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\There is no need. I'll go myself.\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-145 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-145) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-146))


(defmethod fistmage:draw ((this state-145))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "..captured.." (vec2 450 350) :font *title-font* :fill-color *title-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-146 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-146) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-147))


(defmethod fistmage:draw ((this state-146))
  (draw-image (vec2 0 0) :cult_outdoors_night)
  (draw-image (vec2 250 0) :slimene_dialog)
  (draw-image (vec2 650 0) :cultist_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "\\But... I've just told you...\\" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-147 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-147) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-148))


(defmethod fistmage:draw ((this state-147))
  (draw-image (vec2 0 0) :cult_outdoors_night)
  (draw-image (vec2 250 0) :slimene_dialog)
  (draw-image (vec2 650 0) :cultist_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "We need to hurry. I must get them back to their diviny throne." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-148 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-148) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-149))


(defmethod fistmage:draw ((this state-148))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "ONE WEEK LATER" (vec2 380 355) :font *title-font* :fill-color *title-color*))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-149 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-149) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-150))


(defmethod fistmage:draw ((this state-149))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 250 0) :slimene_dialog)
  (draw-image (vec2 650 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 2]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "In the name of heavens and the sun, am I going crazy?" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-150 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-150) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-151))


(defmethod fistmage:draw ((this state-150))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 250 0) :slimene_dialog)
  (draw-image (vec2 650 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 2]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "More and more I feel like I can hear human words from them..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-151 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-151) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-152))


(defmethod fistmage:draw ((this state-151))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 250 0) :slimene_dialog)
  (draw-image (vec2 650 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "//I am no deity. And I am no monster.//" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "//I am a living being, and I want to be heard.//" (vec2 209 65) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-152 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-152) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-153))


(defmethod fistmage:draw ((this state-152))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 250 0) :slimene_dialog)
  (draw-image (vec2 650 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "//I tried to show this to all of you...//" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "//To show that we are not that different.//" (vec2 209 65) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-153 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-153) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-154))


(defmethod fistmage:draw ((this state-153))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 250 0) :slimene_dialog)
  (draw-image (vec2 650 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 2]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "I'm going crazy, I'm..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-154 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-154) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-155))


(defmethod fistmage:draw ((this state-154))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 250 0) :slimene_dialog)
  (draw-image (vec2 650 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "//I tried to show you my darkest nightmares and bravest dreams//" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-155 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-155) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-156))


(defmethod fistmage:draw ((this state-155))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 250 0) :slimene_dialog)
  (draw-image (vec2 650 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 2]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "I remember dreams. Homo sapiens and Slimene standing side" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "by side. No one is monster, no one is deity." (vec2 209 65) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-156 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-156) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-157))


(defmethod fistmage:draw ((this state-156))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 250 0) :slimene_dialog2)
  (draw-image (vec2 650 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "//Then you are on my side! Help other humans hear me.//" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "//Let's build the world I'm dreaming about!//" (vec2 209 65) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-157 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-157) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-158))


(defmethod fistmage:draw ((this state-157))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Let there be slime! What's going on here?" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-158 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-158) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-159))


(defmethod fistmage:draw ((this state-158))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 2]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "I... I mean..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-159 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-159) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-160))


(defmethod fistmage:draw ((this state-159))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "You mean you forgot to greet another priest properly. " (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-160 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-160) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-161))


(defmethod fistmage:draw ((this state-160))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 2]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Let there be slime! Right. S-sorry." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-161 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-161) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-162))


(defmethod fistmage:draw ((this state-161))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Well... If you don't want to tell me anything, then I'll start." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-162 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-162) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-163))


(defmethod fistmage:draw ((this state-162))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog2)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "blob?.." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-163 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-163) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-164))


(defmethod fistmage:draw ((this state-163))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Someone brought to our attention that your interest to the temple..." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "increased. You are spending more and more time here." (vec2 209 65) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-164 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-164) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-165))


(defmethod fistmage:draw ((this state-164))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 2]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Y-yeah, is that bad? My faith getting stronger, and the deity needed" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "someone to watch over them after they ran away..." (vec2 209 65) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-165 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-165) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-166))


(defmethod fistmage:draw ((this state-165))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "//Deity? Watch over? But I thought I was heard...//" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-166 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-166) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-167))


(defmethod fistmage:draw ((this state-166))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Seems like it's you who need someone to watch over, not them." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-167 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-167) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-168))


(defmethod fistmage:draw ((this state-167))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 2]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Me?! No, no...I am loyal to the Cult!" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-168 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-168) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-169))


(defmethod fistmage:draw ((this state-168))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Then answer one question. That heretical sounds you mentioned" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "before... Human-liked, from deity, remember? Do you still hear it?" (vec2 209 65) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-169 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-169) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-170))


(defmethod fistmage:draw ((this state-169))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 2]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "I... what are you talking about?" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-170 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-170) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-171))


(defmethod fistmage:draw ((this state-170))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Remember that couple we offered to our deity before?" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-171 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-171) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-172))


(defmethod fistmage:draw ((this state-171))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 1]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "They heard sounds, too. Do you understand?" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-172 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-172) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-173))


(defmethod fistmage:draw ((this state-172))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 2]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "...I haven't heard anything besides the blob, which is the most" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  (draw-text "beautiful and divine sound in the world." (vec2 209 65) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-173 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-173) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-174))


(defmethod fistmage:draw ((this state-173))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "//But... you...//" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-174 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-174) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-175))


(defmethod fistmage:draw ((this state-174))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "//You... bl-told me...//" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-175 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-175) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-176))


(defmethod fistmage:draw ((this state-175))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog2)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "LIAR" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-176 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-176) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-177))


(defmethod fistmage:draw ((this state-176))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 410 0) :slimene_dialog2)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "LIE LIe blob li blob ar lie lielielieliarblob blob" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-177 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-177) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-178))


(defmethod fistmage:draw ((this state-177))
  (draw-image (vec2 0 0) :slimene_room)
  (draw-image (vec2 150 0) :cultist_dialog)
  (draw-image (vec2 760 0) :cultist_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Cultist 2]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "Our deity... they left the throne! The sky is going to" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
    (draw-text "turn against us again?" (vec2 209 65) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-178 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-178) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-179))


(defmethod fistmage:draw ((this state-178))
  (draw-image (vec2 0 0) :cult_corridors)
  (draw-image (vec2 410 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "//Not the fate. I will/" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-179 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-179) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-180))


(defmethod fistmage:draw ((this state-179))
  (draw-image (vec2 0 0) :cult_corridors)
  (draw-image (vec2 410 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "//Or I... I can just leave. I am alien to them -" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
    (draw-text "and nothing will change that.//" (vec2 209 65) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; ВЫБОР 2 - финальный ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-180 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-180) (button (eql :a)))
  (fistmage:transition-to 'state-300))

  (defmethod fistmage:button-pressed ((this state-180) (button (eql :d)))
  (fistmage:transition-to 'state-400))

(defmethod fistmage:button-pressed ((this state-180) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-180))

(defmethod fistmage:draw ((this state-180))
  (draw-image (vec2 0 0) :cult_corridors)
  (draw-image (vec2 410 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "> PRESS A TO SHOW THEM THE DEITY'S WRATH <" (vec2 355 120) :font *fancy-font* :fill-color *font-color*)
  (draw-text "> PRESS D TO LEAVE <" (vec2 510 80) :font *fancy-font* :fill-color *font-color*))





;;;;; ВЫБОР 2 - финальный ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; выбрали убить жрецов ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-300 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-300) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-301))


(defmethod fistmage:draw ((this state-300))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "Without most of the priests cult almost disappeared, but not completely." (vec2 160 400) :font *fancy-font* :fill-color *title-color*)
  (draw-text "Slimene's become really in charge." (vec2 380 300) :font *fancy-font* :fill-color *title-color*)
  )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-301 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-301) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-302))


(defmethod fistmage:draw ((this state-301))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "Dys returned to the Cult of Sirene, and later Lem also joined them." (vec2 190 400) :font *fancy-font* :fill-color *title-color*)
  (draw-text "He gave Slimene the horn, and now other people could understand them too." (vec2 130 300) :font *fancy-font* :fill-color *title-color*)
  )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-302 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-302) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-303))


(defmethod fistmage:draw ((this state-302))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "Some priests stopped to consider they a deity." (vec2 320 400) :font *fancy-font* :fill-color *title-color*)
  (draw-text "And some stopped thinking they were a monster." (vec2 305 300) :font *fancy-font* :fill-color *title-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-303 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-303) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-304))


(defmethod fistmage:draw ((this state-303))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "But monster, deity or neither, they opened their" (vec2 310 400) :font *fancy-font* :fill-color *title-color*)
  (draw-text "church to the people as a refuge." (vec2 390 300) :font *fancy-font* :fill-color *title-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-304 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-304) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-305))


(defmethod fistmage:draw ((this state-304))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "Sometime Slimene feels lonely. But now they live freely," (vec2 290 400) :font *fancy-font* :fill-color *title-color*)
  (draw-text "they have friends, they are learning to really live." (vec2 325 300) :font *fancy-font* :fill-color *title-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-305 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-305) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-306))


(defmethod fistmage:draw ((this state-305))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "And, who knows... maybe one day they'll hear" (vec2 320 400) :font *fancy-font* :fill-color *title-color*)
  (draw-text "another blob from someone else?.." (vec2 380 300) :font *fancy-font* :fill-color *title-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-306 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-306) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-307))


(defmethod fistmage:draw ((this state-306))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "One thing that Slimene knows for sure - no one will ever consider" (vec2 210 400) :font *fancy-font* :fill-color *title-color*)
  (draw-text "that blob as a word of deity or a sound of a monster." (vec2 280 300) :font *fancy-font* :fill-color *title-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-307 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-307) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-308))


(defmethod fistmage:draw ((this state-307))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "One day the world will be ready. And Slimene will do" (vec2 300 400) :font *fancy-font* :fill-color *title-color*)
  (draw-text "everything in their powers to help that happen." (vec2 330 300) :font *fancy-font* :fill-color *title-color*)
  )

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-308 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-308) (button (eql :mouse-left)))
  (fistmage:transition-to 'start-state))


(defmethod fistmage:draw ((this state-308))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "END: CULT" (vec2 330 350) :font *title-font* :fill-color *title-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;ДРУГАЯ КОНЦОВКА;;;;

(defclass state-400 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-400) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-401))


(defmethod fistmage:draw ((this state-400))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "LATER" (vec2 530 350) :font *title-font* :fill-color *title-color*)
  )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-401 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-401) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-402))


(defmethod fistmage:draw ((this state-401))
  (draw-image (vec2 0 0) :cult_outdoors_night)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "//alone...//" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-402 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-402) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-403))


(defmethod fistmage:draw ((this state-402))
  (draw-image (vec2 0 0) :cult_outdoors)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "//Alone. But I can still breath and eat. At least.//" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-403 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-403) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-404))


(defmethod fistmage:draw ((this state-403))
  (draw-image (vec2 0 0) :cult_outdoors)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "//I don't need to hurt humans. I will not do it again.//" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-404 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-404) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-405))


(defmethod fistmage:draw ((this state-404))
  (draw-image (vec2 0 0) :cult_outdoors)
  (draw-image (vec2 410 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "//All I need is protein, and I can find that in the desert.//" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-405 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-405) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-406))


(defmethod fistmage:draw ((this state-405))
  (draw-image (vec2 0 0) :cult_outdoors)
  (draw-image (vec2 410 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "//Or is it all?..//" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-406 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-406) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-407))


(defmethod fistmage:draw ((this state-406))
  (draw-image (vec2 0 0) :cult_outdoors_night)
  (draw-image (vec2 410 0) :slimene_dialog2)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "//Alone alone al... one...//" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-407 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-407) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-408))


(defmethod fistmage:draw ((this state-407))
  (draw-image (vec2 0 0) :cult_outdoors_night)
  (draw-image (vec2 580 0) :slimene_dialog2)
  (draw-image (vec2 210 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[???]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "BLOB?" (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-408 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-408) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-409))


(defmethod fistmage:draw ((this state-408))
  (draw-image (vec2 0 0) :cult_outdoors_night)
  (draw-image (vec2 580 0) :slimene_dialog2)
  (draw-image (vec2 210 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "?!! BLOB!.." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-409 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-409) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-410))


(defmethod fistmage:draw ((this state-409))
  (draw-image (vec2 0 0) :cult_outdoors_night)
  (draw-image (vec2 580 0) :slimene_dialog2)
  (draw-image (vec2 210 0) :slimene_dialog)
  (draw-image (vec2 147 16) :ui_dialog_window)
  (draw-text "[Slimene]" (vec2 209 135) :font *fancy-font* :fill-color *font-color*)
  (draw-text "?!! BLOB!.." (vec2 209 97) :font *fancy-font* :fill-color *font-color*)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defclass state-410 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-410) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-411))


(defmethod fistmage:draw ((this state-410))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "They heard the joyfull sound out there in the desert." (vec2 300 400) :font *fancy-font* :fill-color *title-color*)
  (draw-text "Not human, but definitely friendly blob." (vec2 370 300) :font *fancy-font* :fill-color *title-color*)
  )

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass state-411 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-411) (button (eql :mouse-left)))
  (fistmage:transition-to 'state-412))


(defmethod fistmage:draw ((this state-411))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "It seems Slimene isn't alone anymore." (vec2 380 400) :font *fancy-font* :fill-color *title-color*)
  (draw-text "She'll never be alone again." (vec2 440 300) :font *fancy-font* :fill-color *title-color*)
  )

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass state-412 ()
  ((started-at :initform (real-time-seconds))))


(defmethod fistmage:button-pressed ((this state-412) (button (eql :mouse-left)))
  (fistmage:transition-to 'start-state))


(defmethod fistmage:draw ((this state-412))
  (draw-rect (vec2 0 0) 1280 720 :fill-paint (vec4 0 0 0 1))
  (draw-text "GOOD END" (vec2 330 350) :font *title-font* :fill-color *title-color*)
  )
