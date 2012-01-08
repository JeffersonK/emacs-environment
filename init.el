;; Tell emacs where is your personal elisp lib dir
;; this is the dir you place all your extra packages
(add-to-list 'load-path "~/.emacs.d/")

;; load the packaged named xyz.
(load "thrift") ;; best not to include the ending “.el” or “.elc”

;; clojure-mode
(add-to-list 'load-path "~/.emacs.d/clojure-mode")
(require 'clojure-mode)

;; paredit
(add-to-list 'load-path "~/.emacs.d/paredit")
(require 'paredit)

;; slime
(eval-after-load "slime" 
  '(progn (slime-setup '(slime-repl))
	  (defun paredit-mode-enable () (paredit-mode 1))
	  (add-hook 'slime-mode-hook 'paredit-mode-enable)
	  (add-hook 'slime-repl-mode-hook 'paredit-mode-enable)
	  (setq slime-protocol-version 'ignore)))

(add-to-list 'load-path "~/opt/.emacs.d")
(require 'slime)
(slime-setup)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
