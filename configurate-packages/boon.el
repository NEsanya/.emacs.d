(require 'use-package)

;; Init boon qwerty mode
(use-package boon-qwerty
  :init
  :config
  (boon-mode))

;; Init boon tutorial
(use-package boon-tutorial
  :init)

;; Implementation boon for powerline
(use-package boon-powerline
  :init
  :config
  (boon-powerline-theme))
