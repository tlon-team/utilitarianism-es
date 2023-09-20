;;; Directory Local Variables            -*- no-byte-compile: t -*-
;;; For more information see (info "(emacs) Directory Variables")
((markdown-mode . ((jinx-languages . "es")
		   (jinx-local-words . "Does Is Objections act and authors avorecer chap ctuar description draft false generalesl gradientBottom gradientTop how immorally means menu next objection page permissive tell title to type ualquiera us utilitarianism weight")
		   (eval . (add-hook 'after-save-hook #'tlon-babel-check-file-title-match nil t))
		   (eval . (add-hook 'after-save-hook #'tlon-babel-fix-curly-quotes nil t))
		   (eval . (add-hook 'after-save-hook #'tlon-babel-fix-footnote-punctuation nil t)))))
