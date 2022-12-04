(setq inhibit-startup-message t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)

(load-theme 'modus-vivendi t)
(hl-line-mode t)


(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)


;;;; FSharp
(unless (package-installed-p 'fsharp-mode)
  (package-install 'fsharp-mode))

(require 'fsharp-mode)

(unless (package-installed-p 'eglot-fsharp)
  (package-install 'eglot-fsharp))

(require 'eglot-fsharp)

(unless (package-installed-p 'company)
  (package-install 'company))

(require 'company)

(unless (package-installed-p 'highlight-indent-guides)
  (package-install 'highlight-indent-guides))

(require 'highlight-indent-guides)






;;; HOOKS
(add-hook 'fsharp-mode-hook 'highlight-indent-guides-mode)
(add-hook 'fsharp-mode-hook 'company-mode)


;;;;; CUSTOM SHIT WHO CARES LOOL ;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-indent-guides-method 'bitmap)
 '(package-selected-packages '(highlight-indent-guides eglot-fsharp fsharp-mode evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
