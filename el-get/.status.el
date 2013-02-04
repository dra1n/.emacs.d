((css-mode status "installed" recipe
           (:name css-mode :type elpa :after
                  (progn
                    (css-mode-hook))))
 (el-get status "installed" recipe
         (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "4.stable" :pkgname "dimitri/el-get" :info "." :load "el-get.el" :features el-get))
 (inf-ruby status "installed" recipe
           (:name inf-ruby :type elpa))
 (package status "installed" recipe
          (:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin 24 :type http :url "http://repo.or.cz/w/emacs.git/blob_plain/1a0a666f941c99882093d7bd08ced15033bc3f0c:/lisp/emacs-lisp/package.el" :shallow nil :features package :post-init
                 (progn
                   (setq package-user-dir
                         (expand-file-name
                          (convert-standard-filename
                           (concat
                            (file-name-as-directory default-directory)
                            "elpa")))
                         package-directory-list
                         (list
                          (file-name-as-directory package-user-dir)
                          "/usr/share/emacs/site-lisp/elpa/"))
                   (make-directory package-user-dir t)
                   (unless
                       (boundp 'package-subdirectory-regexp)
                     (defconst package-subdirectory-regexp "^\\([^.].*\\)-\\([0-9]+\\(?:[.][0-9]+\\)*\\)$" "Regular expression matching the name of\n a package subdirectory. The first subexpression is the package\n name. The second subexpression is the version string."))
                   (setq package-archives
                         '(("ELPA" . "http://tromey.com/elpa/")
                           ("gnu" . "http://elpa.gnu.org/packages/")
                           ("marmalade" . "http://marmalade-repo.org/packages/")
                           ("SC" . "http://joseito.republika.pl/sunrise-commander/"))))))
 (rhtml status "installed" recipe
        (:name rhtml :type git :url "https://github.com/crazycode/rhtml.git" :features rhtml-mode :after
               (progn
                 (rhtml-mode-hook))))
 (ruby-compilation status "installed" recipe
                   (:name ruby-compilation :type elpa))
 (ruby-mode status "installed" recipe
            (:name ruby-mode :type elpa :load "ruby-mode.el" :after
                   (progn
                     (ruby-mode-hook))))
 (slime status "installed" recipe
        (:name slime :description "Superior Lisp Interaction Mode for Emacs" :type github :features slime-autoloads :info "doc" :pkgname "nablaone/slime" :load-path
               ("." "contrib")
               :compile
               (".")
               :build
               ("make -C doc slime.info")
               :post-init
               (slime-setup)))
 (sml-mode status "installed" recipe
           (:name sml-mode :description "SML-mode is a major Emacs mode for editing Standard ML source code." :type http-tar :options
                  ("xzf")
                  :url "http://www.iro.umontreal.ca/~monnier/elisp/sml-mode.tar.gz" :build `,(mapcar
                                                                                              (lambda
                                                                                                (target)
                                                                                                (concat "make " target " EMACS=" el-get-emacs))
                                                                                              '("clean" "default"))
                  :load-path
                  (".")
                  :load
                  ("sml-mode-startup.el")))
 (sml-modeline status "installed" recipe
               (:name sml-modeline :description "Show position in a scrollbar like way in mode-line" :type http :url "http://bazaar.launchpad.net/~nxhtml/nxhtml/main/download/head%3A/smlmodeline.el-20100318165023-n7kkswg6dlq8l6b3-1/sml-modeline.el" :features "sml-modeline"))
 (textmate status "installed" recipe
           (:name textmate :type git :url "git://github.com/defunkt/textmate.el" :load "textmate.el"))
 (yaml-mode status "installed" recipe
            (:name yaml-mode :type git :url "http://github.com/yoshiki/yaml-mode.git" :features yaml-mode :after
                   (progn
                     (yaml-mode-hook)))))
