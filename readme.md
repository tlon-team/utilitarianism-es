# utilitarianism-es

This repository hosts the source files for the Spanish translation of `utilitarianism.net`. This translation is published at [utilitarismo.net](https://utilitarismo.net/).

## [internal] Process for propagating local changes to the main `utilitarianism.net` repo:

### Initial setup (only once)

1. Clone [utilitarianism.net](https://github.com/whyboris/utilitarianism.net) (`M-x magit-clone RET u`).
    1. Answer "n" to "Set `remote.pushDefault`...?".
2. Add repository to `forge` (`M-x forge-add-repository`).
    1. Accept defaults in prompt.
    2. Pull all topics.
3. Fork repository (`N c f`).
    1. Accept defaults in prompts.
    2. Answer "y" to "Set `remote.pushDefault`...?".
  
### Ongoing process (every time)

1. Commit and push your changes normally.
2. Checkout the `export` branch.
3. Switch to your local version of the `utilitarianism.net` repository (the one you cloned in (1) of the previous section)
4. Check out the `main` branch.
5. Pull changes from the remote repository.
6. Copy the contents of `content/es/` to `utilitarianism-es` (e.g. from `~/source/utilitarianism.net/content/es/` to `~/repos/utilitarianism-es/`; the actual paths will depend on your directory structure), overwriting the existing files (make sure that you have indeed checked out the `export` branch, as indicated in (2) of this section).
7. Commit the changes in the `export` branch. You can name the commit ‘Update with latest utilitarianism.net es version’.
8. Merge the `export` branch with the `main` branch, resolving any conflicts if necessary.
9. In the `utilitarianism.net` repository, create a new branch (`b c`).
    1. First select `main`, then name your branch with a name that describes the nature of the commits you are merging (e.g. `improve-translations`).
10. Now copy back the files in the `utilitarianism-es` repo to the `content/es/` directory of `utilitarianism.net` (e.g. from `~/repos/utilitarianism-es/` to `~/source/utilitarianism.net/content/es/`), excluding the `images` subdirectory and the files `.dir-locals`, `.git`, `.gitignore` and `readme.md` (i.e. the files that were not part of the original content of `content/es/`), overwriting the existing files.
11. In the `utilitarianism.net` repo, stage (`s`) and commit these changes (`c c`).
12. Push the changes (`P p`).
13. Create a pull request (`N c p`).
    1. As source branch, select the remote branch selected above, e.g. `<user>/improve-translations`.
    2. As target branch, select `origin/main`.
    3. Write the commit message as usual (i.e. the first line is the commit summary and the rest is the commit description).
14. Finally, go back to the `utilitarianism-es` repo, checkout the `main` branch and merge it with the `export` branch. This is to propagate the changes in the other direction, to ensure that the two repos are fully in sync.


<!-- Local Variables: -->
<!-- jinx-languages: "en" -->
<!-- flycheck-languagetool-language: "en" -->
<!-- End: -->
