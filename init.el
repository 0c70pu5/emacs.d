;;; http://dunmaksim.blogspot.ru/2017/07/emacs-use-package.html
(require 'package)

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3") ;; issue https://github.com/bbatsov/prelude/issues/1225
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("melpa"        . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu"          . "http://elpa.gnu.org/packages/"))
(setq package-enable-at-startup nil)
(package-initialize nil)

(unless (package-installed-p 'use-package)
  (message "EMACS install use-package.el")
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory) user-emacs-directory)
        ((boundp 'user-init-directory) user-init-directory)
        (t "~/.emacs.d/user-settings/")))

(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

(load-user-file "page-break-lines.el")
(load-user-file "personal.el")
(load-user-file "ivy.el")
(load-user-file "projectile.el")
(load-user-file "magit.el")
(load-user-file "yasnippet.el")
(load-user-file "theme.el")
(load-user-file "folding.el")
(load-user-file "prog-mode.el")
(load-user-file "undo-tree.el")
(load-user-file "tabbar.el")
(load-user-file "powerline.el")
(load-user-file "flycheck.el")
(load-user-file "company.el")
(load-user-file "python.el")
(load-user-file "slime.el")
(load-user-file "clojure.el")
(load-user-file "json.el")
(load-user-file "web.el")
(load-user-file "yaml.el")
(load-user-file "nginx.el")
(load-user-file "docker.el")
;; (load-user-file "spell-check.el") ;;This can not work. Istall languagetool first
(load-user-file "navigation.el")
(load-user-file "fill-column-indicator.el")
(load-user-file "which-key.el")
(setq custom-file "~/.emacs.d/customize.el")
(load-user-file "customize.el")
