# normtest 1.1.9001

Renova release, based on CRAN normtest 1.1 (published 2014-03-12).

- `DESCRIPTION`: the stale optional `Date: 2014-03-13` field was removed; added `Authors@R` and role annotations in `Author` (`Ilya Gavrilov [aut], Ruslan Pusev [aut, cre]`); a final period was added to `Description`.
- `NAMESPACE`: added `importFrom(stats, pnorm)`, `qnorm`, `rnorm` and `var` for the functions the package already used. No R function was changed.
- `DESCRIPTION`: `Version` set to `1.1.9001`; "Compatibility updates by Renova." appended to `Description`.
- The stale `MD5` file was removed. `COPYING` (license text), `README.md`, `NEWS.md` and `.Rbuildignore` were added.
