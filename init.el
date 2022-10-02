;; Load configuration files
(defun load-configuration-files (files)
  (dolist (file files)
    (load (expand-file-name file user-emacs-directory))))

(load-configuration-files
 '("configuration.el"
   "packages.el"))
