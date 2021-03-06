;;; salt-misc.el --- Some useful packages -*- lexical-binding: t; -*-
;;
;;; Commentary:
;;
;;  Useful packages.
;;
;;; Code:

;;; Very useful libraries
(use-package f          ;; files
  :straight t
  :defer t)

(use-package dash       ;; lists
  :straight t
  :defer t)

(use-package ht         ;; hash-tables
  :straight t
  :defer t)

(use-package s          ;; strings
  :straight t
  :defer t)

(use-package a         ;; association lists
  :straight t
  :defer t)

(use-package anaphora  ;; anaphora
  :straight t
  :defer t)

;;; helpful
(use-package helpful
  :straight t
  :defer t
  :init
  (setq counsel-describe-function-function #'helpful-callable)
  (setq counsel-describe-variable-function #'helpful-variable))


;;; undo tree
(use-package undo-tree
  :straight t
  :defer t
  :commands (undo-tree-undo global-undo-tree-mode)
  :config
  (global-undo-tree-mode)
  (setq undo-tree-visualizer-timestamps t
	undo-tree-auto-save-history t
        undo-tree-visualizer-diff t
	undo-tree-history-directory-alist
        `(("." . ,(concat salt-dir-cache "undo-tree-hist/")))))

(use-package expand-region
  :straight t
  :defer t)

(use-package rainbow-mode
  :straight t
  :defer t)

(use-package ace-window
  :straight t
  :defer t)

;; eazy-kill
(use-package easy-kill
  :straight t
  :defer t)

;; flyspell
(use-package flyspell
  :straight t
  :defer t
  :init
  (setq ispell-program-name "/usr/local/bin/aspell")
  :hook (emacs-lisp-mode . flyspell-prog-mode))

(provide 'salt-misc)
;;; salt-misc.el ends here
