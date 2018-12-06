;;; packages.el --- dockspec layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author:  <jcinnamond@archie>
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
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `dockspec-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `dockspec/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `dockspec/pre-init-PACKAGE' and/or
;;   `dockspec/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst dockspec-packages
  '(
    (dockspec :location local)
    ruby-mode
    js2-mode
    ))

(defun dockspec/init-dockspec ()
  (use-package dockspec
    :config
    (progn
      (add-hook 'ruby-mode-hook (lambda () (yas-activate-extra-mode 'dockspec)))
      (spacemacs/set-leader-keys-for-minor-mode 'dockspec "tt" 'dockspec-run-current-file)
      (spacemacs/set-leader-keys-for-minor-mode 'dockspec "ts" 'dockspec-run-current-line)
      (spacemacs/set-leader-keys-for-minor-mode 'dockspec "ta" 'dockspec-run-all)
      (spacemacs/set-leader-keys-for-minor-mode 'dockspec "tr" 'dockspec-rerun))))


(defun dockspec/pre-init-ruby-mode ()
  (spacemacs|use-package-add-hook ruby-mode
    :post-config
    (add-hook 'ruby-mode-hook
              (lambda ()
                (if (and (buffer-file-name) (string-match "_spec\\.rb\\'" buffer-file-name))
                    (progn
                      (dockspec)
                      (setq-local dockspec-container-name "iand_test_1")))))))

(defun dockspec/pre-init-js2-mode ()
  (spacemacs|use-package-add-hook js2-mode
    :post-config
    (add-hook 'js2-mode-hook
              (lambda ()
                (if (and (buffer-file-name) (string-match "\\.test\\.js\\'" buffer-file-name))
                    (progn
                      (dockspec)
                      (setq-local dockspec-test-command "yarn run --silent jest")
                      (setq-local dockspec-container-name "iand_test_1")))))))

;;; packages.el ends here
