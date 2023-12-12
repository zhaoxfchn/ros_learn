
(cl:in-package :asdf)

(defsystem "plumbing_server_client-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "add_init" :depends-on ("_package_add_init"))
    (:file "_package_add_init" :depends-on ("_package"))
  ))