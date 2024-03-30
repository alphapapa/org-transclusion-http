(require 'org)
(with-temp-buffer
  (insert-file-contents "README.org")
  (org-export-to-file 'html "README.html"))
