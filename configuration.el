;; Turn off gui elements 
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Display numbers
(global-display-line-numbers-mode 1)

;; Load theme
(load-theme 'modus-vivendi t)

;; Turn off backup files
(setq make-backup-files nil)

;; Clipboard sync
(setq x-select-enable-clipboard t)
(setq x-select-enable-primary t)
