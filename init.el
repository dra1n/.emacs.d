;; Show emacs where sml binary is
(setenv "PATH" (concat "/usr/local/smlnj-110.75/bin:" (getenv "PATH")))
(push "/usr/local/smlnj-110.75/bin" exec-path)
(push "/usr/local/bin" exec-path)

;; SBCL
(setq inferior-lisp-program "/usr/local/bin/sbcl") ; your Lisp system
(setq slime-lisp-implementations '((sbcl ("sbcl"))))
(setq slime-startup-animation nil)

;; SLIME
(add-to-list 'load-path "~/.emacs.d/el-get/slime") ;; Путь к slime
(require 'slime)
(setq slime-net-coding-system 'utf-8-unix)
(slime-setup '(slime-fancy))
(setq slime-enable-evaluate-in-emacs t)

;; Need to add it to package list
(add-to-list 'load-path "~/.emacs.d/el-get/sml-mode")

(fset 'yes-or-no-p 'y-or-n-p)

;; Do not make backup files
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Indention rules
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

;; Startup message
(setq inhibit-startup-message t)

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

;; RoR modes customizations
(defun ruby-mode-hook ()
  (autoload 'ruby-mode "ruby-mode" nil t)
  (add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
  (add-hook 'ruby-mode-hook '(progn
                               (setq ruby-deep-arglist t)
                               (setq ruby-deep-indent-paren nil)
                               (setq c-tab-always-indent nil)
                               (require 'inf-ruby)
                               (require 'ruby-compilation))))
(defun rhtml-mode-hook ()
  (autoload 'rhtml-mode "rhtml-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . rhtml-mode))
  (add-to-list 'auto-mode-alist '("\\.rjs\\'" . rhtml-mode))
  (add-hook 'rhtml-mode '(progn
                           (define-key rhtml-mode-map (kbd "M-s") 'save-buffer))))
(defun yaml-mode-hook ()
  (autoload 'yaml-mode "yaml-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
  (add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode)))
(defun css-mode-hook ()
  (autoload 'css-mode "css-mode" nil t)
  (add-hook 'css-mode-hook '(progn
                              (setq css-indent-level 2)
                              (setq css-indent-offset 2))))

;; Packages. Mostly RoR development stuff.
;; Alternative package manager
(require 'package)
(setq package-archives (cons '("tromey" . "http://tromey.com/elpa/") package-archives))
(package-initialize)
 
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)
 
(setq el-get-sources
      '((:name ruby-mode 
               :type elpa
               :load "ruby-mode.el"
               :after (progn (ruby-mode-hook)))
        (:name inf-ruby  :type elpa)
        (:name ruby-compilation :type elpa)
        (:name css-mode 
               :type elpa 
               :after (progn (css-mode-hook)))
        (:name textmate
               :type git
               :url "git://github.com/defunkt/textmate.el"
               :load "textmate.el")
        (:name rhtml
               :type git
               :url "https://github.com/crazycode/rhtml.git"
               :features rhtml-mode
               :after (progn (rhtml-mode-hook)))
        (:name yaml-mode 
               :type git
               :url "http://github.com/yoshiki/yaml-mode.git"
               :features yaml-mode
               :after (progn (yaml-mode-hook)))
	))

(setq ror-packages 
      (append 
       '(el-get) 
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync ror-packages)
