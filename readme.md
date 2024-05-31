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
3. In the local version of the `utilitarianism.net` repository (the one you cloned in (1) of the previous section), check out the `main` branch.
5. Pull changes from the remote repository.
6. Copy the contents of `content/es/` to `utilitarianism-es` (e.g. from `~/source/utilitarianism.net/content/es/` to `~/repos/utilitarianism-es/`; the actual paths will depend on your directory structure), overwriting the existing files (make sure that you have indeed checked out the `export` branch, as indicated in (2) of this section).
7. In the local version of `utilitarianism-es`, Merge the `export` branch with the `main` branch, resolving any conflicts if necessary.
8. In the local version of `utilitarianism.net` repository, create a new branch (`b c`).
    1. Select `main` as the starting branch.
    2. Name the new branch with a name that describes the nature of the commits you are merging (e.g. `improve-translations`).
9. Now copy back the files in the `utilitarianism-es` repo to the `content/es/` directory of `utilitarianism.net` (e.g. from `~/repos/utilitarianism-es/` to `~/source/utilitarianism.net/content/es/`), excluding the `images` subdirectory and the files `.dir-locals`, `.git`, `.gitignore` and `readme.md` (i.e. the files that were not part of the original content of `content/es/`), overwriting the existing files.
10. In the local version of the `utilitarianism.net` repo, stage (`s`) and commit these changes (`c c`).
11. Push the changes.
12. Create a pull request (`N c p`).
    1. As source branch, select the branch created above, e.g. `<user>/improve-translations`.
    2. As target branch, select `origin/main`.
    3. Write the commit message as usual (i.e. the first line is the commit summary and the rest is the commit description).
13. Finally, go back to the local version of the `utilitarianism-es` repo, checkout the `main` branch, merge it with the `export` branch and push the commit. This is to propagate the changes in the other direction, ensuring that the two repos are fully in sync.


<!-- Local Variables: -->
<!-- jinx-languages: "en" -->
<!-- flycheck-languagetool-language: "en" -->
<!-- End: -->
