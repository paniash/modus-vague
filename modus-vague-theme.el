;;; modus-vague-theme.el --- Color palette for the Modus vague theme  -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Free Software Foundation, Inc.

;; Author: Ashish Panigrahi <public@ashishpanigrahi.com>
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

;;; Code:

(require 'modus-vague)

(defconst modus-vague-palette
  (modus-themes-generate-palette
   '((black "#141415")
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
     (green "#7fa563")

     (bg-main black)
     (fg-main white)

     (docstring amber)
     (string amber)
     (constant cyan)
     (type lilac)
     (warning yellow)
     (keyword blue)
     (variable magenta)

     (border-mode-line-active nil)
     (border-mode-line-inactive nil))))
