;;; Дерево отмены
(use-package
  undo-tree
  :config
  (global-set-key (kbd "C-z") 'undo)
  (defalias 'redo 'undo-tree-redo)
  (global-set-key (kbd "C-S-z") 'redo)
  (global-undo-tree-mode 1)
  )
