(cl:in-package :fistmage.game)


(defun real-time-seconds ()
  (float (/ (get-internal-real-time) internal-time-units-per-second) 0d0))
