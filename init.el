(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
  (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; Bootstrap 'use-package'
(package-initialize)

;; (unless (package-installed-p 'use-package)
;;   (package-refresh-contents)
;;   (package-install 'use-package))

(mapc
 (lambda (package)
   (if (not (package-installed-p package))
       (progn
         (package-refresh-contents)
         (package-install package))))
 '(use-package diminish bind-key))

(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)
(setq use-package-always-ensure t)

(org-babel-load-file (expand-file-name "~/.emacs.d/myconfig.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-save-behavior nil)
 '(ccls-args nil)
 '(ccls-executable "/snap/bin/ccls")
 '(lsp-auto-guess-root nil)
 '(lsp-prefer-flymake nil t)
 '(lsp-ui-doc-border "#263238")
 '(lsp-ui-doc-enable t t)
 '(lsp-ui-doc-header t t)
 '(lsp-ui-doc-include-signature t t)
 '(lsp-ui-doc-max-height 30 t)
 '(lsp-ui-doc-max-width 120 t)
 '(lsp-ui-doc-position (quote top) t)
 '(lsp-ui-doc-use-childframe nil t)
 '(lsp-ui-doc-use-webkit nil t)
 '(lsp-ui-flycheck-enable t t)
 '(lsp-ui-imenu-enable t t)
 '(lsp-ui-imenu-kind-position (quote top) t)
 '(lsp-ui-peek-enable t t)
 '(lsp-ui-peek-fontify (quote on-demand) t)
 '(lsp-ui-peek-list-width 50 t)
 '(lsp-ui-peek-peek-height 20 t)
 '(lsp-ui-sideline-code-actions-prefix "" t)
 '(lsp-ui-sideline-enable nil t)
 '(lsp-ui-sideline-ignore-duplicate t t)
 '(lsp-ui-sideline-show-code-actions nil t)
 '(lsp-ui-sideline-show-diagnostics nil t)
 '(lsp-ui-sideline-show-hover t t)
 '(lsp-ui-sideline-show-symbol t t)
 '(package-selected-packages
   (quote
    (wgrep define-word engine-mode dired-subtree eterm-256color xterm-color auto-yasnippet yasnippet-classic-snippets yasnippet-snippets yasnippet evil-smartparens smartparens beacon dumb-jump counsel-projectile cheatsheet evil-collection auctex pdf-tools doom-modeline all-the-icons spacemacs-theme doom-themes rainbow-delimiters ivy-xref dap-mode cmake-ide cmake-font-lock cmake-mode company-c-headers company-lsp ccls lsp-treemacs lsp-ui lsp-mode company treemacs-magit treemacs-icons-dired treemacs-projectile treemacs-evil treemacs flycheck counsel gnu-elpa-keyring-update ace-window org-bullets which-key try nlinum-relative diminish use-package)))
 '(projectile-project-root-files-top-down-recurring
   (quote
    ("compile_commands.json" ".ccls" "compile_commands.json" ".ccls" ".svn" "CVS" "Makefile"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0 :foreground "deep sky blue"))))
 '(lsp-ui-doc-background ((t (:background nil))))
 '(lsp-ui-doc-header ((t (:inherit (font-lock-string-face italic))))))
