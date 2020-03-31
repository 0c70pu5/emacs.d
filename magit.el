(use-package magit
  :ensure t
  :commands magit-status
  :config
  (progn
    (magit-auto-revert-mode 1)
    (setq magit-completing-read-function 'ivy-completing-read))
  :init
  (add-hook 'magit-mode-hook 'magit-load-config-extensions))

(use-package magithub
  :after magit
  :ensure t
  :disabled
  :config (magithub-feature-autoinject t))
