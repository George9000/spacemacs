;;; packages.el --- pgt layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Prem Thomas <prem@bear.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `pgt-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `pgt/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `pgt/pre-init-PACKAGE' and/or
;;   `pgt/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst pgt-packages
  '()
  "The list of Lisp packages required by the pgt layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")

(setq calendar-latitude 41.3456)
(setq calendar-longitude -72.9722)
(setq calendar-location-name "Hamden, CT")


(global-set-key (kbd "<s-up>") 'beginning-of-buffer)
(global-set-key (kbd "<s-down>") 'end-of-buffer)
(global-set-key (kbd "<s-right>") 'move-end-of-line)
(global-set-key (kbd "<s-left>") 'move-beginning-of-line)

(global-set-key (kbd "s-0") 'delete-window)
(global-set-key (kbd "s-1") 'delete-other-windows)
(global-set-key (kbd "s-2") 'split-window-vertically)
(global-set-key (kbd "s-3") 'split-window-horizontally)
(global-set-key (kbd "s-i") 'other-window)

(global-set-key (kbd "C-x C-b") 'buffer-menu)
(global-set-key (kbd "s-b") 'ido-switch-buffer)
(global-set-key (kbd "s-B") 'ibuffer)
(spacemacs/set-leader-keys
  "bl"  'ibuffer)

(setq display-time-day-and-date t)
(setq display-time-default-load-average nil)
(format-time-string "%a %e %B --")
(setq display-time-format "%I:%M %p %e %b %y %_5j   ")
(display-time)
(delq 'display-time-string global-mode-string)
(setq frame-title-format '((buffer-file-name "%f" ("%b")) "    " display-time-string) )
;;; packages.el ends here
