;;; modus-vague.el --- Emacs port of the popular vague theme -*- lexical-binding:t -*-

;; Copyright (C) 2022-2026  Free Software Foundation, Inc.
;; Copyright (C) 2026  Ashish Panigrahi <public@ashishpanigrahi.com>

;; Author: Ashish Panigrahi <public@ashishpanigrahi.com>
;; Maintainer: Ashish Panigrahi <public@ashishpanigrahi.com>
;; URL: https://github.com/paniash/modus-vague
;; Version: 0.0.0
;; Package-Requires: ((emacs "28.1") (modus-themes "5.0.0"))
;; Keywords: faces, theme

;; This file is NOT part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:


(require 'modus-themes)
(eval-when-compile (require 'subr-x))

;;;; Basics for building on top of Modus

(defgroup modus-vague ()
  "Like the default Emacs themes but more consistent and customizable.
The `standard-themes' are built on top of the `modus-themes'.  To make
all the Modus commands that operate on a theme only consider Standard
themes, enable the `standard-themes-take-over-modus-themes-mode'.  Or,
if you prefer to blend Standard and Modus into a single group, enable
`modus-themes-include-derivatives-mode'."
  :group 'faces
  :group 'modus-themes
  :link '(info-link "(modus-themes) Top")
  :prefix "modus-vague-"
  :tag "Modus Vague Theme")

(defconst modus-vague-themes
  '(modus-vague)
  "List of symbols with the Modus vague theme.")

(defvaralias 'modus-vague-collection 'modus-vague-items
  "Alias of `modus-vague-items'.")

(defconst modus-vague-items
  (append modus-vague-themes)
  "Symbols of the Modus vague theme.")

(defconst modus-vague-common-palette-mappings
  modus-themes-common-palette-mappings
  "Common palette mappings for the Modus vague theme.")

(defconst modus-vague-with-properties
  '((modus-vague
     modus-vague
     "The Modus vague theme."
     dark modus-vivendi-palette modus-vague-palette modus-vague-palette-overrides)))
