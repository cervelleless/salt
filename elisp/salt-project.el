;;; salt-project.el --- project manager -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2020 cervelle
;;
;; Author: Cervelleless <http://github.io/cervelleless>
;; Maintainer: Cervelle <cervelleless@gmail.com>
;; Created: November 17, 2020
;; Modified: November 17, 2020
;; Version: 0.0.1
;; Keywords:
;; Homepage:
;; Package-Requires: ((emacs 27.1) (cl-lib "0.5"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Project manager.
;;
;;; Code:


;;; projectile
(use-package projectile
  :straight t
  :hook (after-init . projectile-mode)
  :config
  (setq projectile-completion-system 'default
        projectile-enable-caching t
        projectile-indexing-method 'hybrid
	projectile-known-projects-file (expand-file-name "projectile.projects" salt-dir-cache)
	projectile-cache-file (expand-file-name "projectile.cache" salt-dir-cache)
        projectile-ignored-projects '("~/" "/tmp")))


(provide 'salt-project)
;;; salt-project.el ends here
