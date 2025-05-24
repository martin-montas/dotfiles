

(remove-hook 'doom-init-ui-hook #'doom-init-theme-h)

(setq doom-theme nil)

(setq doom-font (font-spec :family "Hack Nerd Font" :size 20))

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode t)
(global-font-lock-mode t)

(which-key-mode)
(after! vterm
  ;; Disable popup for doom vterm
  (set-popup-rule! "^\\*doom:vterm" :ignore t)

  ;; Make vterm open in full window
  (defun my/vterm-toggle-full-window ()
    "Toggle vterm in the current frame and delete other windows."
    (interactive)
    (+vterm/toggle)
    (when (get-buffer "*doom:vterm*")
      (switch-to-buffer "*doom:vterm*")
      (delete-other-windows)))

  (advice-add '+vterm/toggle :override #'my/vterm-toggle-full-window))
