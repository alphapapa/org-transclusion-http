(require 'org)
(require 'ox-html)
(with-temp-buffer
  (insert-file-contents "README.org")
  (org-export-to-file 'html "README.html" nil nil nil t))
