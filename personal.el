;;; Package --- Summary
;;; Commentary:
;;; User settings for .emacs

;;; Code:

;;; Закрывать *scratch* при запуске.
(kill-buffer "*scratch*")

;;; Scrolling
(setq scroll-step               1) ;; one line
(setq scroll-margin            10) ;; scroll buffer to 10 lines at going to last line
(setq scroll-conservatively 10000)
(setq directory-free-space-args "-Pm")

;; Подсветка результатов поиска и всё такое
(setq search-highlight        t)
(setq query-replace-highlight t)

(setq-default cursor-type 'bar) ;;тонкий курсор
(setq column-number-mode 1) ;; Номера строк слева
(setq use-dialog-box nil)   ;; Не нужны нам диалоги, будем всё руками делать
(auto-fill-mode -1)         ;; Не знаю, что за параметр, так и не разобрался
(setq-default tab-width          2) ;; Заменить TAB на 4 пробела
(setq-default standart-indent    2) ;; Стандартный отступ - 4 пробела
(setq backup-inhibited t)           ;; Backup'ы тоже делать не будем
(setq auto-save-default nil)        ;; Автосохранение не нужно
(setq scroll-preserve-screen-position 10) ;; Показывать не менее 10 строк на экране
(show-paren-mode 1)  ;; Подсветка скобочек
(setq show-paren-style 'parenthesis)   ;; Подсветка скобочек

(setq-default c-basic-offset 2 c-indent-level 2 indent-tabs-mode nil) ;; TAB'ы не нужны

(setq-default save-place t) ;; Помнить, где был курсор в прошлый раз

;;; Нажатие Insert больше не включает режим замены
(define-key global-map [(insert)] nil)

;;; Автоформатирование перед сохранением
(defun format-current-buffer()
  (indent-region (point-min)
                 (point-max)))
(defun untabify-current-buffer()
  (if (not indent-tabs-mode)
      (untabify (point-min)
                (point-max)))
  nil)
(add-to-list 'write-file-functions 'untabify-current-buffer)
(add-to-list 'write-file-functions 'delete-trailing-whitespace)

(cua-mode 1)          ;;; Ctrl+C, Ctrl+V! Прямо как в Windows!
(fset 'yes-or-no-p 'y-or-n-p) ;;; Вместо yes и no понимать y и n
(global-hl-line-mode 1) ;;; Подсветка текущей строки
;; (global-linum-mode 1)   ;;; Показывать номера строк всегда
(menu-bar-mode -1)      ;;; А меню - никогда
(scroll-bar-mode -1)    ;;; Скроллбар не нужен
(tool-bar-mode -1)      ;;; Тулбар не нужен

(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)
;;(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
;;(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
;;(global-set-key (kbd "S-C-<down>") 'shrink-window)
;;(global-set-key (kbd "S-C-<up>") 'enlarge-window)

(setq auto-save-list-file-prefix nil)

;;; Цветные скобочки
(use-package
  rainbow-delimiters
  :init (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
        (setq rainbow-delimiters-max-face-count 9))

;;; Умные скобочки
(use-package
  smartparens
  :config (smartparens-global-mode 1))

;; Electric pair mode
(electric-pair-mode 1)

;; Иконки в статус-баре
;;(use-package
;;  mode-icons
;;  :config (mode-icons-mode 1))

;; Показывать отступы во всех режимах
(use-package
  indent-guide
  :config (indent-guide-global-mode 1))


(defun load-purpose-mode ()
  (interactive)
  (purpose-load-window-layout-file "~/.emacs.d/layouts/full-ide.window-layout")
  (purpose-x-code1-setup)
)
(global-set-key (kbd "M-L") 'load-purpose-mode)
;;; personal.el ends here
