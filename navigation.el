(use-package all-the-icons)

(use-package neotree
  :config
  (global-set-key [f8] 'neotree-toggle)
  :requires all-the-icons
  :custom
  (neo-autorefresh nil)
  (neo-hidden-regexp-list (quote ("\\.pyc$" "~$")))
  (neo-show-hidden-files t)
  (neo-theme (quote icons))
  )

;; (use-package sr-speedbar
;;  :bind ([f8] . sr-speedbar-toggle)
;;  :custom
;;  (speedbar-file-unshown-regexp "^$")
;;  (speedbar-show-unknown-files t)
;;  (sr-speedbar-default-width 16)
;;  (sr-speedbar-max-width 32)
;;  (sr-speedbar-auto-refresh t)
;;)


;;(use-package nav
;;  :bind ([f8] . nav-toggle)
;;  :custom
;;  (nav-disable-overeager-window-splitting))
