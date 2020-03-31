(use-package ispell
  :config
  (progn
    (setq ispell-program-name (executable-find "hunspell"))
    (setq ispell-dictionary "en_US")
    (setq ispell-tex-skip-alists
          (list
           (append
            (car ispell-tex-skip-alists)
            '(("\\\\autocite"   ispell-tex-arg-end)
              ("\\\\autocites"  ispell-tex-arg-end)))
           (cadr ispell-tex-skip-alists)))))

(use-package langtool
  :ensure t
  :config
  (progn
    (setq langtool-bin "/emacs.d/languagetool.jar")
    (setq langtool-default-language "en-US")))
