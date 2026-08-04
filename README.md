# Modus Vague theme for GNU Emacs

Emacs port of the [vague](https://github.com/vague-theme/vague) theme
built on top of [Modus themes](https://protesilaos.com/emacs/modus-themes).

## Installation

The package is not available yet on MELPA but you can use the built-in
`package-vc` to install it. With `use-package`, a default config would
look like:

```emacs-lisp
(use-package modus-vague
  :vc (:url "https://github.com/paniash/modus-vague"
       :rev :newest)
  :config
  (setq modus-themes-mixed-fonts t
        modus-themes-italic-constructs t
        modus-themes-bold-constructs t
        modus-themes-variable-pitch-ui t))
```

Since this theme builds on top of modus themes, one can use the same customization options that modus themes provide.
