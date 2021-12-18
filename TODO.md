- [ ] add ci to pkgbuilds
- [ ] deploy with ci pkgbuilds
      ```bash
      # folders that changed git
      git diff origin/master... --name-only --diff-filter=d |
          grep -v 'node_modules/' | # ignore "node_modules" folder
          grep -v '\.venv/' | # ignore ".venv" folder
          grep -v 'nucli\.d/libs/shini\.sh$' |
          sort
      ```
- [ ] cli for editing sha256 (or md5sum) of pkgfiles, install the package and do a smoke test
