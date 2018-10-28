(cl:in-package :fistmage.game)


(fistmage:defgame (fistmage-game start-state)
  (:viewport-title "sundust")
  (:viewport-width 1280)
  (:viewport-height 720))


(defun play ()
  (fistmage:start 'fistmage-game))
