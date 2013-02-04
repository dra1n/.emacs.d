;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (css-mode) "css-mode/css-mode" "css-mode/css-mode.el"
;;;;;;  (20742 22097))
;;; Generated autoloads from css-mode/css-mode.el
(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))

(autoload 'css-mode "css-mode/css-mode" "\
Major mode for editing CSS source code.

Key bindings:

\\{css-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (el-get-checksum el-get-make-recipes el-get-cd
;;;;;;  el-get-self-update el-get-update-all el-get-version) "el-get/el-get"
;;;;;;  "el-get/el-get.el" (20742 22020))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

;;;***

;;;### (autoloads (el-get-list-packages) "el-get/el-get-list-packages"
;;;;;;  "el-get/el-get-list-packages.el" (20742 22020))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads (run-ruby inf-ruby inf-ruby-setup-keybindings)
;;;;;;  "inf-ruby/inf-ruby" "inf-ruby/inf-ruby.el" (20742 22081))
;;; Generated autoloads from inf-ruby/inf-ruby.el

(autoload 'inf-ruby-setup-keybindings "inf-ruby/inf-ruby" "\
Set local key defs to invoke inf-ruby from ruby-mode.

\(fn)" nil nil)

(autoload 'inf-ruby "inf-ruby/inf-ruby" "\
Run an inferior Ruby process in a buffer.
With prefix argument, prompts for which Ruby implementation
\(from the list `inf-ruby-implementations') to use. Runs the
hooks `inf-ruby-mode-hook' (after the `comint-mode-hook' is
run).

\(fn &optional IMPL)" t nil)

(autoload 'run-ruby "inf-ruby/inf-ruby" "\
Run an inferior Ruby process, input and output via buffer *ruby*.
If there is a process already running in `*ruby*', switch to that buffer.
With argument, allows you to edit the command line (default is value
of `ruby-program-name').  Runs the hooks `inferior-ruby-mode-hook'
\(after the `comint-mode-hook' is run).
\(Type \\[describe-mode] in the process buffer for a list of commands.)

\(fn &optional COMMAND NAME)" t nil)

(eval-after-load 'ruby-mode '(inf-ruby-setup-keybindings))

;;;***

;;;### (autoloads (ruby-compilation-this-buffer ruby-compilation-cap
;;;;;;  ruby-compilation-rake ruby-compilation-run pcomplete/cap
;;;;;;  pcomplete/rake) "ruby-compilation/ruby-compilation" "ruby-compilation/ruby-compilation.el"
;;;;;;  (20742 22093))
;;; Generated autoloads from ruby-compilation/ruby-compilation.el

(autoload 'pcomplete/rake "ruby-compilation/ruby-compilation" "\


\(fn)" nil nil)

(autoload 'pcomplete/cap "ruby-compilation/ruby-compilation" "\


\(fn)" nil nil)

(autoload 'ruby-compilation-run "ruby-compilation/ruby-compilation" "\
Run a ruby process dumping output to a ruby compilation
buffer. If supplied, `name' will be used in place of the script
name to construct the name of the compilation buffer.

\(fn CMD &optional RUBY-OPTIONS NAME)" t nil)

(autoload 'ruby-compilation-rake "ruby-compilation/ruby-compilation" "\
Run a rake process dumping output to a ruby compilation buffer.

\(fn &optional EDIT TASK ENV-VARS)" t nil)

(autoload 'ruby-compilation-cap "ruby-compilation/ruby-compilation" "\
Run a capistrano process dumping output to a ruby compilation buffer.

\(fn &optional EDIT TASK ENV-VARS)" t nil)

(autoload 'ruby-compilation-this-buffer "ruby-compilation/ruby-compilation" "\
Run the current buffer through Ruby compilation.

\(fn)" t nil)

;;;***

;;;### (autoloads (ruby-mode) "ruby-mode/ruby-mode" "ruby-mode/ruby-mode.el"
;;;;;;  (20742 22064))
;;; Generated autoloads from ruby-mode/ruby-mode.el

(autoload 'ruby-mode "ruby-mode/ruby-mode" "\
Major mode for editing Ruby scripts.
\\[ruby-indent-line] properly indents subexpressions of multi-line
class, module, def, if, while, for, do, and case statements, taking
nesting into account.

The variable ruby-indent-level controls the amount of indentation.
\\{ruby-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

(add-to-list 'interpreter-mode-alist '("rbx" . ruby-mode))

(add-to-list 'interpreter-mode-alist '("jruby" . ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby1.9" . ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby1.8" . ruby-mode))

;;;***

;;;### (autoloads (common-lisp-indent-function) "slime/contrib/slime-cl-indent"
;;;;;;  "slime/contrib/slime-cl-indent.el" (20751 51989))
;;; Generated autoloads from slime/contrib/slime-cl-indent.el

(autoload 'common-lisp-indent-function "slime/contrib/slime-cl-indent" "\
Function to indent the arguments of a Lisp function call.
This is suitable for use as the value of the variable
`lisp-indent-function'.  INDENT-POINT is the point at which the
indentation function is called, and STATE is the
`parse-partial-sexp' state at that position.  Browse the
`lisp-indent' customize group for options affecting the behavior
of this function.

If the indentation point is in a call to a Lisp function, that
function's common-lisp-indent-function property specifies how
this function should indent it.  Possible values for this
property are:

* defun, meaning indent according to `lisp-indent-defun-method';
  i.e., like (4 &lambda &body), as explained below.

* any other symbol, meaning a function to call.  The function should
  take the arguments: PATH STATE INDENT-POINT SEXP-COLUMN NORMAL-INDENT.
  PATH is a list of integers describing the position of point in terms of
  list-structure with respect to the containing lists.  For example, in
  ((a b c (d foo) f) g), foo has a path of (0 3 1).  In other words,
  to reach foo take the 0th element of the outermost list, then
  the 3rd element of the next list, and finally the 1st element.
  STATE and INDENT-POINT are as in the arguments to
  `common-lisp-indent-function'.  SEXP-COLUMN is the column of
  the open parenthesis of the innermost containing list.
  NORMAL-INDENT is the column the indentation point was
  originally in.  This function should behave like `lisp-indent-259'.

* an integer N, meaning indent the first N arguments like
  function arguments, and any further arguments like a body.
  This is equivalent to (4 4 ... &body).

* a list starting with `as' specifies an indirection: indentation is done as
  if the form being indented had started with the second element of the list.

* any other list.  The list element in position M specifies how to indent the
  Mth function argument.  If there are fewer elements than function arguments,
  the last list element applies to all remaining arguments.  The accepted list
  elements are:

  * nil, meaning the default indentation.

  * an integer, specifying an explicit indentation.

  * &lambda.  Indent the argument (which may be a list) by 4.

  * &rest.  When used, this must be the penultimate element.  The
    element after this one applies to all remaining arguments.

  * &body.  This is equivalent to &rest lisp-body-indent, i.e., indent
    all remaining elements by `lisp-body-indent'.

  * &whole.  This must be followed by nil, an integer, or a
    function symbol.  This indentation is applied to the
    associated argument, and as a base indent for all remaining
    arguments.  For example, an integer P means indent this
    argument by P, and all remaining arguments by P, plus the
    value specified by their associated list element.

  * a symbol.  A function to call, with the 6 arguments specified above.

  * a list, with elements as described above.  This applies when the
    associated function argument is itself a list.  Each element of the list
    specifies how to indent the associated argument.

For example, the function `case' has an indent property
\(4 &rest (&whole 2 &rest 1)), meaning:
  * indent the first argument by 4.
  * arguments after the first should be lists, and there may be any number
    of them.  The first list element has an offset of 2, all the rest
    have an offset of 2+1=3.

\(fn INDENT-POINT STATE)" nil nil)

;;;***

;;;### (autoloads (sml-yacc-mode sml-lex-mode sml-cm-mode sml-mode)
;;;;;;  "sml-mode/sml-mode" "sml-mode/sml-mode.el" (20358 8148))
;;; Generated autoloads from sml-mode/sml-mode.el

(add-to-list 'auto-mode-alist '("\\.s\\(ml\\|ig\\)\\'" . sml-mode))

(autoload 'sml-mode "sml-mode/sml-mode" "\
\\<sml-mode-map>Major mode for editing ML code.
This mode runs `sml-mode-hook' just before exiting.
\\{sml-mode-map}

\(fn)" t nil)

(add-to-list 'completion-ignored-extensions ".cm/")

(add-to-list 'auto-mode-alist '("\\.cm\\'" . sml-cm-mode))

(autoload 'sml-cm-mode "sml-mode/sml-mode" "\
Major mode for SML/NJ's Compilation Manager configuration files.

\(fn)" t nil)

(autoload 'sml-lex-mode "sml-mode/sml-mode" "\
Major Mode for editing ML-Lex files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.grm\\'" . sml-yacc-mode))

(autoload 'sml-yacc-mode "sml-mode/sml-mode" "\
Major Mode for editing ML-Yacc files.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "sml-mode/sml-proc" "sml-mode/sml-proc.el"
;;;;;;  (20358 8148))
;;; Generated autoloads from sml-mode/sml-proc.el

(autoload 'run-sml "sml-proc" nil t)

;;;***

;;;### (autoloads (sml-modeline-mode sml-modeline) "sml-modeline/sml-modeline"
;;;;;;  "sml-modeline/sml-modeline.el" (20742 22625))
;;; Generated autoloads from sml-modeline/sml-modeline.el

(let ((loads (get 'sml-modeline 'custom-loads))) (if (member '"sml-modeline/sml-modeline" loads) nil (put 'sml-modeline 'custom-loads (cons '"sml-modeline/sml-modeline" loads))))

(defvar sml-modeline-mode nil "\
Non-nil if Sml-Modeline mode is enabled.
See the command `sml-modeline-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `sml-modeline-mode'.")

(custom-autoload 'sml-modeline-mode "sml-modeline/sml-modeline" nil)

(autoload 'sml-modeline-mode "sml-modeline/sml-modeline" "\
Show buffer size and position like scrollbar in mode line.
You can customize this minor mode, see option `sml-modeline-mode'.

Note: If you turn this mode on then you probably want to turn off
option `scroll-bar-mode'.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (textmate-mode) "textmate/textmate" "textmate/textmate.el"
;;;;;;  (20742 22100))
;;; Generated autoloads from textmate/textmate.el

(defvar textmate-mode nil "\
Non-nil if Textmate mode is enabled.
See the command `textmate-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `textmate-mode'.")

(custom-autoload 'textmate-mode "textmate/textmate" nil)

(autoload 'textmate-mode "textmate/textmate" "\
TextMate Emulation Minor Mode

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (yaml-mode yaml) "yaml-mode/yaml-mode" "yaml-mode/yaml-mode.el"
;;;;;;  (20742 22166))
;;; Generated autoloads from yaml-mode/yaml-mode.el

(let ((loads (get 'yaml 'custom-loads))) (if (member '"yaml-mode/yaml-mode" loads) nil (put 'yaml 'custom-loads (cons '"yaml-mode/yaml-mode" loads))))

(autoload 'yaml-mode "yaml-mode/yaml-mode" "\
Simple mode to edit YAML.

\\{yaml-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.ya?ml$" . yaml-mode))

;;;***

;;;### (autoloads nil nil ("css-mode/css-mode-autoloads.el" "css-mode/css-mode-pkg.el"
;;;;;;  "el-get/el-get-autoloads.el" "el-get/el-get-build.el" "el-get/el-get-byte-compile.el"
;;;;;;  "el-get/el-get-core.el" "el-get/el-get-custom.el" "el-get/el-get-dependencies.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get-methods.el" "el-get/el-get-notify.el"
;;;;;;  "el-get/el-get-recipes.el" "el-get/el-get-status.el" "inf-ruby/inf-ruby-autoloads.el"
;;;;;;  "inf-ruby/inf-ruby-pkg.el" "rhtml/rhtml-erb.el" "rhtml/rhtml-fonts.el"
;;;;;;  "rhtml/rhtml-mode.el" "rhtml/rhtml-navigation.el" "rhtml/rhtml-ruby-hook.el"
;;;;;;  "rhtml/rhtml-sgml-hacks.el" "ruby-compilation/ruby-compilation-autoloads.el"
;;;;;;  "ruby-compilation/ruby-compilation-pkg.el" "ruby-mode/ruby-mode-autoloads.el"
;;;;;;  "ruby-mode/ruby-mode-pkg.el" "slime/contrib/bridge.el" "slime/contrib/inferior-slime.el"
;;;;;;  "slime/contrib/slime-asdf.el" "slime/contrib/slime-autodoc.el"
;;;;;;  "slime/contrib/slime-banner.el" "slime/contrib/slime-c-p-c.el"
;;;;;;  "slime/contrib/slime-clipboard.el" "slime/contrib/slime-compiler-notes-tree.el"
;;;;;;  "slime/contrib/slime-editing-commands.el" "slime/contrib/slime-enclosing-context.el"
;;;;;;  "slime/contrib/slime-fancy-inspector.el" "slime/contrib/slime-fancy.el"
;;;;;;  "slime/contrib/slime-fontifying-fu.el" "slime/contrib/slime-fuzzy.el"
;;;;;;  "slime/contrib/slime-highlight-edits.el" "slime/contrib/slime-hyperdoc.el"
;;;;;;  "slime/contrib/slime-indentation.el" "slime/contrib/slime-mdot-fu.el"
;;;;;;  "slime/contrib/slime-media.el" "slime/contrib/slime-motd.el"
;;;;;;  "slime/contrib/slime-mrepl.el" "slime/contrib/slime-package-fu.el"
;;;;;;  "slime/contrib/slime-parse.el" "slime/contrib/slime-presentation-streams.el"
;;;;;;  "slime/contrib/slime-presentations.el" "slime/contrib/slime-references.el"
;;;;;;  "slime/contrib/slime-repl.el" "slime/contrib/slime-sbcl-exts.el"
;;;;;;  "slime/contrib/slime-scheme.el" "slime/contrib/slime-scratch.el"
;;;;;;  "slime/contrib/slime-snapshot.el" "slime/contrib/slime-sprof.el"
;;;;;;  "slime/contrib/slime-tramp.el" "slime/contrib/slime-typeout-frame.el"
;;;;;;  "slime/contrib/slime-xref-browser.el" "slime/hyperspec.el"
;;;;;;  "slime/slime-autoloads.el" "slime/slime.el" "sml-mode/sml-mode-startup.el"
;;;;;;  "sml-mode/sml-oldindent.el") (20751 51992 580254))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
