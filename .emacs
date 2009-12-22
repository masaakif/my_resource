;; No backup file .#*
(setq auto-save-default nil)
(setq backup-inhibited t)

;; set 256 colors
(load "~/emacs_lisp/utils/emacs21-256color-hack.el")
(tty-color-closest-to-rgb-txt)

;; set background color grey
(set-face-background 'default "cornsilk1" nil)

;; Do not show start up message
;(setq inhibit-startup-message t)

;; Ignore case when auto completion
(setq completion-ignore-case t)

;; Highlight cursor line
(global-hl-line-mode)

;; Load Utils
(setq load-path 
      (append '("~/emacs_lisp/utils/"
		"~/emacs_lisp/utils/anything/"
		"~/emacs_lisp/elscreen/"
		"~/emacs_lisp/apel/")
	      load-path))

;; elscreen
(setq elscreen-display-tab nil)
(require 'elscreen)

;; anything.el
(require 'anything-config)

;; Interactively Do Things
(require 'ido)
(ido-mode t)

;; Set log mode
(load-file "~/emacs_lisp/utils/mwe-log-commands.elc")
(add-hook 'rinari-minor-mode-hook (function mwe:log-keyboard-commands))

;; Rinari
(add-to-list 'load-path "~/emacs_lisp/rinari")
(require 'rinari)

;; Ruby-mode
;;(autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source files" t)
;;(setq auto-mode-alist (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
;;(setq interpreter-mode-alist (append '(("ruby" . ruby-mode)) interpreter-mode-alist))
;;(autoload 'run-ruby "inf-ruby" "Run an inferior Ruby process")
;;(autoload 'inf-ruby-keys "inf-ruby" "Set local key defs for inf-ruby in ruby-mode")
;;(add-hook 'ruby-mode-hook
;;	  '(lambda ()
;;	     (inf-ruby-keys)))

;; Ruby c-mode
;(c-add-style "ruby" '("bsd"
;		      (c-basic-offset . 4)
;		      (c-offsets-alist (case-label . 2)
;				       (label . 2)
;				       (statement-case-intro . 2)
;				       (statement-case-open . 2))))
;
;(defun my-c-mode-hook ()
;  (c-set-style "ruby"))
;(add-hook 'c-mode-hook 'my-c-mode-hook)

;;; rhtml-mode
(add-to-list 'load-path "~/emacs_lisp/rhtml")
(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook
    (lambda () (rinari-launch)))

;; Load yasnippet
;;(setq load-path (cons (expand-file-name "~/emacs_lisp/yasnippet") load-path))
(setq load-path (cons (expand-file-name "~/emacs_lisp/yasnippet-bundle") load-path))

;; Load yasnippets-rails
(require 'yasnippet-bundle)
(yas/initialize)
(yas/load-directory "~/emacs_lisp/yasnippets-rails/rails-snippets")

;; Load magit - git front for emacs
(add-to-list 'load-path "~/emacs_lisp/magit/share/emacs/site-lisp/")
(require 'magit)

;; key-binding
;; normal behaviors
(global-set-key [?\C-;] 'switch-to-buffer)
(global-set-key [?\C-,] 'beginning-of-buffer)
(global-set-key [?\C-.] 'end-of-buffer)
(global-set-key "\d" 'delete-backward-char)
(global-set-key "\C-ce" 'eval-current-buffer)
(global-set-key "\C-cr" 'revert-buffer)
(global-set-key "\C-^" 'enlarge-window)
(global-set-key [?\C--] 'shrink-window)

;; additional behaviors
(global-set-key "\C-xb" 'anything)

(define-key minibuffer-local-completion-map "\C-w" 'backward-kill-word)

;; Open eShell
(add-hook 'after-init-hook
	  (lambda() (eshell)))
