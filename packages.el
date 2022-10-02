;; List of packages
(setq
 local-packages
 '(use-package ; Macro for fast configuration
   meow        ; Modal editor mode
   telega))    ; Telegram client for emacs

;; Adding melpa
(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Synchronize packages
(defun nesanya/sync-packages ()
  (interactive)
  (unless package-archive-contents
    (package-refresh-conents))
  (dolist (package local-packages)
    (unless (package-installed-p package)
      (package-install package))))

;; Load packages configuration
(setq configuration-directory
      (expand-file-name "configurate-packages/" user-emacs-directory))

(let ((strings-of-packages
       (mapcar (lambda (package) (concat (symbol-name package) ".el"))
	       local-packages)))
  (dolist (package strings-of-packages)
    (let ((configuration-file (expand-file-name package configuration-directory)))
      (if (file-exists-p configuration-file)
	  (load configuration-file)))))
