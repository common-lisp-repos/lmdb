(defsystem lmdb
  :author "Fernando Borretti <eudoxiahp@gmail.com>"
  :maintainer "Fernando Borretti <eudoxiahp@gmail.com>"
  :license "MIT"
  :version "0.1"
  :homepage ""
  :bug-tracker ""
  :source-control (:git "")
  :depends-on (:lmdb-low
               :alexandria
               :trivial-utf-8
               :bit-smasher)
  :components ((:module "src"
                :components
                ((:module "high"
                  :components
                  ((:file "lmdb"))))))
  :description "Bindings to LMDB."
  :long-description
  #.(uiop:read-file-string
     (uiop:subpathname *load-pathname* "README.md"))
  :in-order-to ((test-op (test-op lmdb-test))))
