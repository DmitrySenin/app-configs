(require 'package)
(setq package-enable-at-startup nil)
(add-to-list `package-archives `("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install `use-package))

(unless (package-installed-p 'spacemacs-theme)
  (package-refresh-contents)
  (package-install `spacemacs-theme))

(use-package which-key
  :ensure t
  :init
  (which-key-mode))

(defalias 'yes-or-no-p 'y-or-n-p)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(setq inhibit-startup-message t)
(setq scroll-conservatively 100)
(setq ring-bell-function 'ignore)
(when window-system (global-hl-line-mode t))
(when window-system (global-prettify-symbols-mode t))
(setq make-backup-file nil)
(setq auto-save-default nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(package-selected-packages (quote (spacemacs-theme which-key use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "outline" :family "Fira Code")))))
