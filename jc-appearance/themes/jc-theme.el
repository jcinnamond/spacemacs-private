;; -*- eval: (rainbow-mode) -*-

(deftheme jc-theme
  "My custom theme")

(let ((class '((class color) (min-colors 89)))
      ;;
      ;; Color Palette
      ;;

      (dark0 "#090909")

      ;; Text colors
      ;;; Blue
      (light0 "#d6dCd6")
      (light1 "#C6CCD6")
      (light2 "#A4AFBF")
      (light3 "#8191A8")
      (light4 "#657A98")

      ;; Highlight colors
      ;;; Blue
      (highlight0 "#13181E")
      (highlight1 "#283136")
      (highlight2 "#415B6A")
      (highlight3 "#97A5AD")
      (highlight4 "#FFF6DE")

      (success "#3E8870")
      (success1 "#0B513A")
      (warning "#A66F32")
      (error "#A43235")
      (error1 "#7F393B"))

  (custom-theme-set-faces
   'jc-theme
   `(bold ((,class (:weight bold))))
   `(bold-italic ((,class (:weight bold :slant italic))))
   `(default ((,class (:foreground ,light0 :background ,dark0))))
   `(error ((,class (:foreground ,error :weight bold))))
   `(italic ((,class (:slant italic))))
   `(shadow ((,class (:foreground ,light0))))
   `(underline ((,class (:underline t))))
   `(warning ((,class (:foreground ,warning))))

   `(font-lock-comment-face ((,class (:foreground ,light3 :background ,dark0))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,light3))))
   `(font-lock-string-face ((,class (:foreground ,light0))))
   `(font-lock-warning-face ((,class (:foreground ,warning))))

   `(font-lock-builtin-face ((,class (:foreground ,light0))))
   `(font-lock-constant-face ((,class (:foreground ,light0))))
   `(font-lock-doc-face ((,class (:foreground ,light0))))
   `(font-lock-function-name-face ((,class (:foreground ,light0))))
   `(font-lock-keyword-face ((,class (:foreground ,light2 :weight normal))))
   `(font-lock-negation-char-face ((,class (:foreground ,light0))))
   `(font-lock-preprocessor-face ((,class (:foreground ,light0))))
   `(font-lock-reference-face ((,class (:foreground ,light0))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,light0))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,light0))))
   `(font-lock-type-face ((,class (:foreground ,light0 :weight normal))))
   `(font-lock-variable-name-face ((,class (:foreground ,light0))))

   ;; +--- UI ---+
   `(minibuffer-prompt ((,class (:foreground ,light0, :weight normal))))

   `(border ((,class (:foreground ,light0))))
   `(cursor ((,class (:background ,light0))))
   `(highlight ((,class (:foreground ,highlight0 :background ,highlight3))))
   `(hl-line ((,class (:background ,highlight0))))
   `(isearch ((,class (:foreground ,dark0 :background ,highlight3))))
   `(isearch-fail ((,class (:background ,error, :foreground ,light0))))
   `(link ((,class (:underline t))))
   `(link-visited ((,class (:underline t))))
   `(linum ((,class (:foreground ,light2 :background ,highlight0))))
   `(linum-relative-current-face ((,class (:foreground ,light1 :background ,highlight0))))
   `(match ((,class (:inherit isearch))))
   `(next-error ((,class (:inherit error))))
   `(nobreak-space ((,class (:foreground ,light0))))
   `(region ((,class (:foreground ,highlight4 :background ,highlight2))))
   `(show-paren-match-face ((,class (:foreground ,light0 :background ,highlight1))))
   `(show-paren-mismatch-face ((,class (:foreground ,light0, :background ,error1))))
   `(trailing-whitespace ((,class (:foreground ,warning))))
   `(vertical-border ((,class (:foreground ,light3))))
   `(window-divider ((,class (:background ,dark0))))
   `(window-divider-first-pixel ((,class (:background ,dark0))))
   `(window-divider-last-pixel ((,class (:background ,dark0))))

   ;; > Flycheck & Flyspell
   `(flycheck-error ((,class (:underline (:style wave :color ,error)))))
   `(flycheck-warning ((,class (:underline (:style wave :color ,warning)))))
   `(flycheck-info ((,class (:underline (:style wave :color ,highlight4) :background ,highlight1))))
   `(flycheck-fringe-error ((,class (:foreground ,error))))
   `(flycheck-fringe-info ((,class (:foreground ,light1))))
   `(flycheck-fringe-warning ((,class (:foreground ,warning))))
   `(flyspell-incorrect ((,class (:underline (:style wave :color ,warning)))))

   ;; > Compliation
   `(compilation-info ((,class (:foreground ,success))))
   `(compilation-error ((,class (:foreground ,error))))

   ;; > Diff
   `(diff-header ((,class (:foreground ,light0 :background ,highlight2))))
   `(diff-file-header ((,class (:foreground ,light0 :background ,highlight2 :weight normal))))
   `(diff-hunk-header ((,class (:foreground ,light2))))
   `(diff-indicator-removed ((,class (:foreground ,light0 :background ,error1))))
   `(diff-removed ((,class (:foreground ,light0 :background ,error1))))
   `(diff-indicator-added ((,class (:foreground ,light0 :background ,success1))))
   `(diff-added ((,class (:foreground ,light0 :background ,success1))))

   ;; > Ivy
   `(ivy-current-match ((,class (:background ,highlight2 :foreground ,light0))))
   `(ivy-minibuffer-match-face-2 ((,class (:foreground ,success))))

   ;; > Modeline
   `(mode-line-buffer-id ((,class (:foreground ,highlight4 :weight normal))))
   `(mode-line-highlight ((,class (:inherit highlight))))
   `(mode-line ((,class (:foreground ,light0 :background ,highlight2))))
   `(mode-line-inactive ((,class (:foreground ,light0 :background ,highlight0))))
   `(jc-mode-line-state-insert-face ((,class (:foreground ,dark0 :background ,highlight4))))
   `(jc-mode-line-state-replace-face ((,class (:foreground ,dark0 :background ,highlight4))))
   `(jc-mode-line-state-visual-face ((,class (:background ,error))))

   ;; > Org mode
   `(org-level-1 ((,class (:foreground ,light1 :background ,highlight2))))
   `(org-todo ((,class (:foreground ,warning :weight bold))))
   `(org-block-begin-line ((,class (:foreground ,light0 :background ,dark0))))
   `(org-block-end-line ((,class (:foreground ,light0 :background ,dark0))))
   `(org-block-background ((,class (:foreground ,light0 :background ,highlight1))))

   ;; > Magit
   `(magit-section-heading ((,class (:foreground ,light3 :weight normal))))
   `(magit-filename ((,class (:foreground ,light0 :weight normal))))
   `(magit-section-highlight ((,class (:background ,highlight1))))
   `(magit-diff-context-highlight ((,class (:background ,highlight1))))
   `(magit-diff-file-heading ((,class (:foreground ,light0 :weight normal))))
   `(magit-diff-hunk-heading ((,class (:foreground ,light0 :weight normal :background ,highlight1))))
   `(magit-diff-hunk-heading-highlight ((,class (:foreground ,light0 :weight normal :background ,highlight1))))
   `(magit-diff-removed ((,class (:foreground ,light0 :background ,error1))))
   `(magit-diff-removed-highlight ((,class (:foreground ,light0 :background ,error1))))
   `(magit-diff-added ((,class (:foreground ,light0 :background ,success1))))
   `(magit-diff-added-highlight ((,class (:foreground ,light0 :background ,success1))))
   `(magit-branch-local ((,class (:foreground ,light2))))
   `(magit-branch-remote ((,class (:foreground ,light2))))

   ;; > Eshell
   `(eshell-prompt ((,class (:foreground ,light2))))
   `(eshell-ls-executable ((,class (:foreground ,light2))))
   `(eshell-ls-directory ((,class (:foreground ,warning))))

   ;; > Web mode
   `(web-mode-html-tag-face ((, class (:foreground ,light2))))
   `(web-mode-builtin-face ((, class (:foreground ,light2))))
   `(web-mode-keyword-face ((, class (:foreground ,light2))))
   `(web-mode-type-face ((, class (:foreground ,light0))))
   `(web-mode-block-delimiter-face ((, class (:weight normal))))
   `(web-mode-block-string-face ((, class (:foreground ,light0))))
   `(web-mode-html-attr-name-face ((, class (:foreground ,light0))))
   `(web-mode-html-attr-value-face ((, class (:foreground ,light0))))
   `(web-mode-symbol-face ((, class (:foreground ,light0))))

   ;; Column marker
   `(column-marker-1 ((, class (:background ,highlight1))))
   `(column-marker-2 ((, class (:background ,highlight2))))
   ))

(provide-theme 'jc-theme)
