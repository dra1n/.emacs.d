;; Show emacs where sml binary is
(setenv "PATH" (concat "/usr/local/smlnj-110.75/bin:" (getenv "PATH")))
(setq exec-path (cons "/usr/local/smlnj-110.75/bin" exec-path))

;; Use emacs navigation panel
(add-to-list 'load-path "~/.emacs.d/emacs-nav/")
(require 'nav)

;; Load railscasts theme. Weeee!!!
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'railscasts t)

;; Change font size to 13
(set-face-attribute 'default nil :height 130)

;; Remove annoying splash screen
(setq inhibit-splash-screen t)

;; Hide toolbar
(tool-bar-mode -1)

;; Key bindings
(global-set-key [M-left] 'windmove-left)          ; move to left windnow
(global-set-key [M-right] 'windmove-right)        ; move to right window
(global-set-key [M-up] 'windmove-up)              ; move to upper window
(global-set-key [M-down] 'windmove-down)          ; move to downer window
