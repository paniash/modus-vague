;;; modus-vague-theme.el --- Color palette for the Modus vague theme  -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Free Software Foundation, Inc.

;; Author: Ashish Panigrahi <public@ashishpanigrahi.com>
;; Maintainer: Ashish Panigrahi <public@ashishpanigrahi.com>
;; URL: https://github.com/paniash/modus-vague
;; Keywords: faces, theme

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; This is the Emacs port of the popular vague theme from neovim.
;; It is built on top of Modus themes, thus providing excellent
;; support for most major and minor modes.

;;; Code:

(require 'modus-vague)

(defconst modus-vague-palette
  (modus-themes-generate-palette
   '((bg-main "#141415")
     (bg-dim "#1c1c24")
     (fg-main "#cdcdcd")

     (bg-added "#233b0f")
     (bg-added-faint "#102a00")
     (bg-added-refine "#2f512f")

     (bg-changed "#363300")
     (bg-changed-faint "#2a1f00")
     (bg-changed-refine "#4a4a00")

     (bg-removed "#4e111f")
     (bg-removed-faint "#380a0f")
     (bg-removed-refine "#751a1f")

     (fg-dim "#857f8f")
     (black "#141415")
     (shadow "#1c1c24")
     (graphite "#252530")
     (onyx "#333738")
     (muted "#606079")
     (gray "#878787")
     (white "#cdcdcd")
     (yellow "#f3be7c")
     (amber "#e8b589")
     (gold "#e0a363")
     (peach "#c48282")
     (red "#d8647e")
     (storm "#405065")
     (lilac "#c3c3d5")
     (cyan "#aeaed1")
     (magenta "#bb9dbd")
     (aqua "#b4d4cf")
     (lavender "#90a0b5")
     (teal "#9bb4bc")
     (blue "#6e94b2")
     (iris "#7e98e8")
     (green "#7fa563"))
   nil
   nil
   '((docstring amber)
     (string amber)
     (constant cyan)
     (type lilac)
     (warning yellow)
     (keyword blue)
     (variable magenta)
     (comment fg-dim)

     ;; Tab bar
     (bg-tab-bar bg-dim)
     (bg-tab-other bg-dim)

     ;; Modeline
     (bg-mode-line-inactive bg-dim)
     (border-mode-line-inactive bg-dim)
     (bg-mode-line-active bg-dim)
     (border-mode-line-active bg-dim)

     ;; Visual text
     (fg-region unspecified)

     ;; Mail (GNUS, mu4e, notmuch)
     (mail-cite-0 yellow)
     (mail-cite-1 aqua)
     (mail-cite-2 green)
     (mail-cite-3 fg-dim)
     (mail-part cyan)
     (mail-recipient teal)
     (mail-subject magenta)
     (mail-other iris)

     ;; Org-agenda
     (date-scheduled gold)
     (date-scheduled-subtle teal)
     (date-event iris)

     ;; Headings (in orgmode for example)
     (fg-heading-0 peach)
     (fg-heading-1 amber)

     (date-common magenta)

     (fringe unspecified)
     (border-mode-line-active unspecified)
     (bg-line-number-inactive unspecified)
     (bg-line-number-active unspecified)
     (fg-line-number-inactive fg-dim)
     (border-mode-line-inactive unspecified))))

(defconst modus-vague-custom-faces
  '(
    `(git-commit-summary ((,c :inherit bold :foreground ,iris))))
  "Custom faces overriding the default faces of Modus themes.")

(defcustom modus-vague-palette-overrides nil
  "Overrides for `modus-vague-palette'."
  :group 'modus-vague
  :package-version '(modus-vague . "0.1.5")
  :type '(repeat (list symbol (choice symbol string)))
  :link '(info-link "(modus-themes) Palette overrides"))

;;;###autoload
(modus-themes-theme
 'modus-vague
 'modus-vague
 "The Modus vague theme."
 'dark
 'modus-themes-vivendi-palette
 'modus-vague-palette
 'modus-vague-palette-overrides
 'modus-vague-custom-faces)

(provide-theme 'modus-vague)

;;; modus-vague-theme.el ends here
