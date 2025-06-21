(setq doom-theme 'doom-xcode)
(setq doom-font (font-spec :family "Fira Code" :size 20))
(setq display-line-numbers-type 'relative)

(global-font-lock-mode t)
(which-key-mode)

(after! solaire-mode
  (solaire-global-mode -1))

(map! :leader
      "h" #'evil-window-left
      "j" #'evil-window-down
      "k" #'evil-window-up
      "l" #'evil-window-right)

