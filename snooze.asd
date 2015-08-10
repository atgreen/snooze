(asdf:defsystem :snooze
  :depends-on (#:alexandria #:cl-ppcre #:closer-mop #:quri #:uiop)
  :author "João Távora <https://github.com/capitaomorte>"
  :version #.(with-open-file (f "VERSION") (string (read f)))
  :license "LLGPL"
  :description "A framework for building REST services using CLOS."
  :serial t
  :components ((:file "package")
               (:file "constants")
               (:file "common")
               (:file "api")))

(asdf:defsystem :snooze-tests
  :depends-on (#:snooze #:fiasco)
  :serial t
  :components ((:file "snooze-tests")))

(asdf:defsystem :snooze-demo
  :depends-on (#:snooze #:alexandria #:cl-who #:cl-css #:hunchentoot #:cl-json)
  :serial t
  :components ((:file "demo")))


