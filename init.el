;; Tell emacs where is your personal elisp lib dir
;; this is the dir you place all your extra packages
(add-to-list 'load-path "~/.emacs.d/")

;; load the packaged named xyz.
(load "thrift") ;; best not to include the ending “.el” or “.elc”

;;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

;; clojure-mode
(add-to-list 'load-path "~/.emacs.d/vendor/clojure-mode")
(require 'clojure-mode)

;Erlang Mode
(setq load-path (cons  "/usr/local/lib/erlang/lib/tools-2.6.6.6/emacs" load-path))
(setq erlang-root-dir "/usr/local/lib/erlang")
(setq exec-path (cons "/usr/local/lib/erlang/bin" exec-path))
(require 'erlang-start)

;; scala-mode
(add-to-list 'load-path "~/.emacs.d/vendor/scala-mode")
(require 'scala-mode)

;; paredit
(add-to-list 'load-path "~/.emacs.d/vendor/paredit")
(require 'paredit)

;; slime
(eval-after-load "slime" 
  '(progn (slime-setup '(slime-repl))
	  (defun paredit-mode-enable () (paredit-mode 1))
	  (add-hook 'slime-mode-hook 'paredit-mode-enable)
	  (add-hook 'slime-repl-mode-hook 'paredit-mode-enable)
	  (setq slime-protocol-version 'ignore)))

(add-to-list 'load-path "~/.emacs.d/vendor/slime")
(require 'slime)
(slime-setup)

(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(require 'color-theme)

(add-to-list 'load-path "~/.emacs.d/emacs-color-theme-solarized")
(require 'color-theme-solarized)

;;(require 'color-theme-autoload "color-theme-autoloads")
;;(load-file "~/.emacs.d/color-themes/themes/zenburn-theme.el")
;;(zenburn)

(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(inhibit-startup-screen t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
