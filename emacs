;; WIP Syntax Highlighting for Fetlang in Emacs
;; Created by: Phate6660 (https://phate6660.github.io/Main.html)

(setq fetlang-highlights
      '(("(\\([^<]+?\\))" . font-lock-comment-face)
		("Worship\\|Scream\\|Spank\\|Lick\\|Flog\\|Moan\\|worship\\|spank\\|scream\\|lick\\|flog\\|moan\\|Make\\|Have\\|make\\|have" . font-lock-function-name-face)
		("Dungeon Master\\|Slave\\|dungeon master\\|slave" . font-lock-constant-face)
		("\"\"\\|one\\|two\\|three\\|four\\|five\\|six\\|seven\\|eight\\|nine\\|ten\\|eleven\\|twelve\\|thirteen\\|fourteen\\|fifteen\\|sixteen\\|seventeen\\|eighteen\\|nineteen\\|twenty\\|thirty\\|fourty\\|fifty\\|sixty\\|seventy\\|eighty\\|ninety\\|hundred\\|thousand\\|million\\|billion\\|trillion" . font-lock-string-face)))

(define-derived-mode fetlang-mode fundamental-mode "fetlang"
  "major mode for syntax highlighting of Fetlang."
  (setq font-lock-defaults '(fetlang-highlights)))

(add-to-list 'auto-mode-alist '("\\.fet\\'" . fetlang-mode))