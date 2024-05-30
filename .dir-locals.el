;;; Directory Local Variables            -*- no-byte-compile: t -*-
;;; For more information see (info "(emacs) Directory Variables")
((markdown-mode . ((jinx-languages . "es")
		   (flycheck-languagetool-language . "es")
		   (jinx-local-words . "Does Is Objections act and authors avorecer chap ctuar description draft false generalesl gradientBottom gradientTop how immorally means menu next objection page permissive tell title to type ualquiera us utilitarianism weight")
		   (eval . (add-hook 'after-save-hook #'tlon-autofix-all nil t))
                   ;; (eval . (add-hook 'after-save-hook #'tlon-yaml-reorder-front-matter nil t))
		   ;; (eval . (add-hook 'after-save-hook #'tlon-highlight-url-correspondences nil t))
		   (eval . (add-hook 'before-save-hook #'tlon-md-sort-related-entries nil t)))))
