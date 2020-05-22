(require 'package)
(package-initialize)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))

(eval-when-compile
  (require 'use-package))


(setq deft-directory "C:/Users/chris/Dropbox/org-mode/")
(use-package deft
  :after org
  :bind
  ("C-c n d" . deft)
  :custom
  (deft-recursive t)
  (deft-use-filter-string-for-filename t)
  (deft-default-extension "org")
  (deft-directory "C:/Users/chris/Dropbox/org-mode/")
  (deft-use-filename-as-title t))


;;(add-to-list 'load-path "C:/Users/chris/AppData/Roaming/.emacs.d/elpa/org-roam")
;;(require 'org-roam)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;;(setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

(use-package org-roam
      :hook (org-mode . org-roam-mode)
      :load-path "C:/Users/chris/AppData/Roaming/.emacs.d/elpa/org-roam"
      :custom
      (org-roam-directory "C:/Users/chris/Dropbox/org-mode/")
      :bind
      ("C-c n l" . org-roam)
      ("C-c n t" . org-roam-today)
      ("C-c n f" . org-roam-find-file)
      ("C-c n i" . org-roam-insert)
      ("C-c n g" . org-roam-show-graph))

(add-hook 'org-mode-hook #'(lambda ()
                             ;; make the lines in the buffer wrap around the edges of the screen.
                             ;; to press C-c q  or fill-paragraph ever again!
                             (visual-line-mode)))
                             ;;(org-indent-mode)
                             ;;(toggle-word-wrap)))
(toggle-word-wrap t)
;;(visual-line-mode t)

(require 'org-download)
;; Drag-and-drop to `dired`;;(add-hook 'dired-mode-hook 'org-download-enable)
(setq-default org-download-image-dir "~/figs")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (manoj-dark)))
 '(custom-safe-themes
   (quote
    ("bc836bf29eab22d7e5b4c142d201bcce351806b7c1f94955ccafab8ce5b20208" "6bacece4cf10ea7dd5eae5bfc1019888f0cb62059ff905f37b33eec145a6a430" "e1ef2d5b8091f4953fe17b4ca3dd143d476c106e221d92ded38614266cea3c8b" "615123f602c56139c8170c153208406bf467804785007cdc11ba73d18c3a248b" "229c5cf9c9bd4012be621d271320036c69a14758f70e60385e87880b46d60780" "51956e440cec75ba7e4cff6c79f4f8c884a50b220e78e5e05145386f5b381f7b" "d5d2ab76985738c142adbe6a35dc51c8d15baf612fdf6745c901856457650314" "d5f8099d98174116cba9912fe2a0c3196a7cd405d12fa6b9375c55fc510988b5" "7f791f743870983b9bb90c8285e1e0ba1bf1ea6e9c9a02c60335899ba20f3c94" "774aa2e67af37a26625f8b8c86f4557edb0bac5426ae061991a7a1a4b1c7e375" "2cdc13ef8c76a22daa0f46370011f54e79bae00d5736340a5ddfe656a767fddf" "0ad7f1c71fd0289f7549f0454c9b12005eddf9b76b7ead32a24d9cb1d16cbcbd" "be9645aaa8c11f76a10bcf36aaf83f54f4587ced1b9b679b55639c87404e2499" "777a3a89c0b7436e37f6fa8f350cbbff80bcc1255f0c16ab7c1e82041b06fccd" "a339f231e63aab2a17740e5b3965469e8c0b85eccdfb1f9dbd58a30bdad8562b" "d71aabbbd692b54b6263bfe016607f93553ea214bc1435d17de98894a5c3a086" "1c8171893a9a0ce55cb7706766e57707787962e43330d7b0b6b0754ed5283cda" "fa3bdd59ea708164e7821574822ab82a3c51e262d419df941f26d64d015c90ee" "e801830e362310e0654d7931bb10607463dec414d82107e94be224c76d5c5877" default)))
 '(deft-default-extension "org" t)
 '(deft-directory "C:/Users/chris/Dropbox/org-mode/" t)
 '(deft-recursive t t)
 '(deft-use-filename-as-title t t)
 '(deft-use-filter-string-for-filename t t)
 '(package-selected-packages
   (quote
    (emacsql-sqlite3 org-roam org-download counsel ivy-explorer doom-themes org-ref chocolate-theme async deft ##))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(defcustom my-default-image-directory
  "~/figs/"
  "Default directory for images for org link insertion."
  :type 'string
  :group 'image-org-link-insertion)

(defcustom my-image-extensions
  '("png" "jpg" "jpeg" "tiff")
  "List of image extensions allowed for org link insertion."
  :type '(repeat string)
  :group 'image-org-link-insertion)

(defun insert-image-org-link (img)
    "Insert an org image link, choosing the file with completion
  and starting from the figs folder."
    (interactive
     (list (file-relative-name (read-file-name "Image: " (concat default-directory "figs/")) default-directory)))
    (insert (format "[[file:%s]]" img)))

(load-theme 'doom-moonlight t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-face-attribute 'default nil :height 140)
