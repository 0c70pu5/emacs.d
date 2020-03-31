(use-package yasnippet
  :diminish yas-minor-mode
  :ensure t
  :config
  (yas-global-mode t)
  :init
  (setq yas-alias-to-yas/prefix-p nil))
(use-package yasnippet-snippets
  :ensure t)
