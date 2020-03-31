(use-package ivy
  :ensure t)

(use-package swiper
  :ensure t
  :diminish ivy-mode
  :bind (("C-s" . swiper)
         ("C-r" . swiper)
         ("C-c C-r" . ivy-resume)
         ("C-c h m" . woman)
         ("C-x b" . ivy-switch-buffer)
         ("C-c u" . swiper-all))
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t))
(use-package counsel
  :ensure t
  :bind (("M-x" . counsel-M-x)
         ("C-x C-f" . counsel-find-file)
         ("C-h f" . counsel-describe-function)
         ("C-h v" . counsel-describe-variable)
         ("C-h i" . counsel-info-lookup-symbol)
         ("C-h u" . counsel-unicode-char)
         ("C-c k" . counsel-rg)
         ("C-x l" . counsel-locate)
         ("C-c g" . counsel-git-grep)
         ("C-c h i" . counsel-imenu)
         ("C-x p" . counsel-list-processes))
  :config
  (ivy-set-actions
           'counsel-find-file
           '(("j" find-file-other-window "other")))
  (ivy-set-actions 'counsel-git-grep
                   '(("j" find-file-other-window "other"))))

(use-package ivy-hydra
  :ensure t)
