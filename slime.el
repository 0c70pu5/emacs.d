(use-package slime-company
  :ensure t
  :defer t
  :commands slime-company)

(use-package slime
  :ensure t
  :defer t
  :commands (slime slime-lisp-mode-hook slime-mode)
  :custom
  (inferior-lisp-program "sbcl")
  (slime-net-coding-system 'utf-8-unix)
  :config
  (setq common-lisp-hyperspec-root
        "file:///usr/share/doc/hyperspec")
  (setq slime-contribs
        '(slime-fancy slime-asdf slime-quicklisp slime-cl-indent))

  (slime-setup '(slime-fancy slime-asdf slime-quicklisp slime-company)))
