;;; Package --- Summary
;;; Commentary:
;;; Speedbar - sidebar for file browsing

;;; Code:

(use-package sr-speedbar
  :bind ([f8] . sr-speedbar-toggle)
  :custom
  (speedbar-file-unshown-regexp "^$")
  (speedbar-show-unknown-files t)
  (sr-speedbar-default-width 16)
  (sr-speedbar-max-width 32)
  (sr-speedbar-auto-refresh t)
)
;;; speedbar.el ends here
