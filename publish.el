;; publish.el --- Publish org-mode project on Gitlab Pages
;; Author: Rasmus

;;; Commentary:
;; This script will convert the org-mode files in this directory into
;; html.

(setq org-publish-project-alist
      (list
       (list "org"
             :base-directory "org"
             :base-extension 'any
             :publishing-directory "public/org"
             :publishing-function 'org-publish-attachment
             :recursive t)
       (list "src"
             :base-directory "src"
             :base-extension 'any
             :publishing-directory "public/src"
             :publishing-function 'org-publish-attachment
             :recursive t)
	   ))

(provide 'publish)
;;; publish.el ends here

