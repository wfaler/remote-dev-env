(require 'package)
(setq package-list '(markdown-mode
                     yaml-mode
                     js2-mode
                     jsx-mode
                     find-file-in-project
                     auto-complete
                     nix-mode
                     dockerfile-mode
                     scala-mode2
                   ;;  haskell-mode
                     solarized-theme
                   ;;  flycheck
                   ;;  flycheck-haskell
                     hi2
                     ))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; activate all the packages (in particular autoloads)
(package-initialize)

;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
        (package-install package)))

(when (not package-archive-contents)
    (package-refresh-contents))
;; NO FRILLS
(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))
(setq inhibit-startup-screen t)
;; NO JUNK
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t))
      backup-directory-alist `((".*" . ,temporary-file-directory)))

(column-number-mode)
(setq-default indent-tabs-mode nil)
(define-key global-map (kbd "RET") 'newline-and-indent)
;;(load-theme 'solarized-dark t)

(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx$" . jsx-mode))

(add-to-list 'auto-mode-alist '("\\.tpl$\\'" . html-mode))

(add-to-list 'load-path "~/.emacs.d/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)


