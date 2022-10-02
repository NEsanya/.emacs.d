;; List of packages
(setq
 local-packages
 '(use-package  ; A use-package declaration for simplifying your .emacs
   meow         ; Yet another modal editing on Emacs
   mood-line    ; A minimal mode-line configuration for Emacs, inspired by doom-modeline  
   golden-ratio ; Automatic resizing of Emacs windows to the golden ratio 
   telega))     ; GNU Emacs telegram client (unoffical)

;; Adding melpa
(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Synchronize packages
(defun nesanya/sync-packages ()
  (interactive)
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
