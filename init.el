;; Show emacs where sml binary is
(setenv "PATH" (concat "/usr/local/smlnj-110.75/bin:" (getenv "PATH")))
(setq exec-path (cons "/usr/local/smlnj-110.75/bin" exec-path))

;; Load railscasts theme. Weeee!!!
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'railscasts t)

;; Change font size to 13
(set-face-attribute 'default nil :height 130)

;; Remove annoying splash screen
(setq inhibit-splash-screen t)

;; Hide toolbar
(tool-bar-mode -1)
