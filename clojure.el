(use-package clojure-mode
  :mode ("\\.clj\\'" . clojure-mode)
  :config
  (define-clojure-indent
    (defroutes 'defun)
    (GET 2)
    (POST 2)
    (PUT 2)
    (DELETE 2)
    (HEAD 2)
    (ANY 2)
    (context 2))
    (use-package dash
      :ensure t)
    (use-package pkg-info
      :ensure t)
  )

(use-package cider
  :mode ("\\.clj\\'" . clojure-mode)
  :commands (cider cider-connect cider-jack-in)
  :ensure t)
