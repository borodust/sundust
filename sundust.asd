(asdf:defsystem :sundust
  :description "Visual Novel"
  :license "MIT"
  :version "1.0.0"
  :author "Kristina Ukhova"
  :depends-on (fistmage)
  :serial t
  :components ((:file "packages")
               (:file "utils")
               (:file "states")
               (:file "game")))
