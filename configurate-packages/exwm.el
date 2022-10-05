(require 'exwm)

;; Set config
(require 'exwm-config)
(exwm-config-default)

;; Set window resolution
(require 'exwm-randr)
(setq exwm-randr-workspace-output-plist '(1 "DP-2" 5 "HDMI-2"))
(add-hook 'exwm-randr-screen-change-hook
	  (lambda ()
	    (start-process-shell-command
	     "xrandr"
	     nil
	     "xrandr --output DP-2 --mode 1920x1080 --output HDMI-2 --left-of DP-2 --mode 1920x1080")))
(exwm-randr-enable)

;; Systray
(require 'exwm-systemtray)
(exwm-systemtray-enable)

;; Workspaces
(setq exwm-workspace-number 9)
