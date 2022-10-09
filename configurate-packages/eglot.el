(require 'use-package)

(use-package eglot
  :init
  :config
  (add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))
  (add-to-list 'eglot-server-programs '((rust-mode)  "rust-analyzer"))
  (add-to-list 'eglot-server-programs '(elm-mode . ("elm-language-server" "--stdio")))
  (add-hook 'rust-mode-hook 'eglot-ensure)
  (add-hook 'c-mode-hook    'eglot-ensure)
  (add-hook 'elm-mode-hook  'eglot-ensure))
