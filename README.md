# .emacs.d (WORK IN PROGRESS)
My vanila emacs configuration

## Installation

First of all, you need to set emacs as daemon ([systemd example](https://www.emacswiki.org/emacs/EmacsAsDaemon)).

After that, install config and synchronize packages:
```sh
git clone https://github.com/NEsanya/.emacs.d ~/.emacs.d # Install config
emacsclient -e '(progn (nesanya/sync-packages) (nesanya/reload-config))' # Synchronize packages and reload config
```
