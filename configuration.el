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

;; Delete file and buffer
(defun delete-file-and-buffer ()
  "Kill the current buffer and deletes the file it is visiting."
  (interactive)
  (let ((filename (buffer-file-name)))
    (if filename
        (if (y-or-n-p (concat "Do you really want to delete file " filename " ?"))
            (progn
              (delete-file filename)
              (message "Deleted file %s." filename)
              (kill-buffer)))
      (message "Not a file visiting buffer!"))))

;; Reload config
(defun nesanya/reload-config ()
  (interactive)
  (load-file user-init-file))
