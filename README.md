# normtest

Tests for the composite hypothesis of normality.

Compatibility updates by Renova.

Version 1.1.9001 makes metadata changes and no change to the R functions. The stale optional `Date` field was removed. The authors are also listed in an `Authors@R` entry, and the `Author` field now reads `Ilya Gavrilov [aut], Ruslan Pusev [aut, cre]`; the maintainer address is unchanged. The `Description` now ends with a period. `NAMESPACE` gained `importFrom(stats, pnorm, qnorm, rnorm, var)`.

## Install

From R-universe:

```r
install.packages("normtest", repos = c(
  Renova = "https://renova-r.r-universe.dev",
  CRAN = "https://cloud.r-project.org"
))
```

Or the exact release tag:

```r
install.packages("remotes")
remotes::install_github("renova-r/normtest@renova-1.1.9001")
```

[Release notes](NEWS.md) · [Renova package directory](https://github.com/renova-r/revival-catalog)

normtest was written by Ilya Gavrilov and Ruslan Pusev (maintainer). License: GPL (>= 3) (see [COPYING](COPYING)).
