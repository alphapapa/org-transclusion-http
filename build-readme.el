(require 'org)
(require 'ox-html)
(with-temp-buffer
  (insert-file-contents "README.org")
  (cl-letf (((symbol-function 'org-html--build-meta-info)
             ;; HACK: Sourcehut erroneously displays <head> content, so
             ;; we stop org from generating <head> entirely.
             ;; TODO: File bug with Sourcehut to stop from rendering <head>
             #'ignore))
    (org-export-to-file 'html "README.html")))
