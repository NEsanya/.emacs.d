;; List of packages
(setq
 local-packages
 '(use-package       ; A use-package declaration for simplifying your .emacs
   powerline         ; Emacs powerline
   boon              ; Ergonomic Command Mode for Emacs 
   tree-sitter       ; Tree-sitter bindings for Emacs Lisp
   tree-sitter-langs ; Language bundle for Emacs's tree-sitter package
   eglot             ; A client for Language Server Protocol
   yasnippet         ; A template system for Emacs
   rust-mode         ; Emacs configuration for Rust
   vertico           ; vertico.el - VERTical Interactive COmpletion
   corfu             ; corfu.el - Completion Overlay Region FUnction
   magit             ; It's Magit! A Git porcelain inside Emacs
   golden-ratio      ; Automatic resizing of Emacs windows to the golden ratio 
   exwm              ; Emacs X Window Manager
   telega))          ; GNU Emacs telegram client (unoffical)

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

;; Remove custom file for use-package
(setq cutsom-file "/dev/null")

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
