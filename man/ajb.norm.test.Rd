\name{ajb.norm.test}
\alias{ajb.norm.test}
\title{Adjusted Jarque--Bera test for normality}
\description{
  Performs adjusted Jarque--Bera test for the composite hypothesis of normality, 
  see Urzua (1996).
}
\usage{
ajb.norm.test(x, nrepl=2000)
}
\arguments{
  \item{x}{a numeric vector of data values.} %Missing values are allowed.
  \item{nrepl}{the number of replications in Monte Carlo simulation.}
}
\details{The adjusted Jarque--Bera test for normality is based on the following statistic:
\deqn{
AJB = \frac{(\sqrt{b_1})^2}{\mathrm{Var}\left(\sqrt{b_1}\right)} + \frac{(b_2 - \mathrm{E}\left(b_2\right))^2}{\mathrm{Var}\left(b_2\right)},
}
where
\deqn{
\sqrt{b_1} = \frac{\frac{1}{n}\sum_{i=1}^n(X_i - \overline{X})^3}{\left(\frac{1}{n}\sum_{i=1}^n(X_i - \overline{X})^2\right)^{3/2}},
\quad
b_2 = \frac{\frac{1}{n}\sum_{i=1}^n(X_i - \overline{X})^4}{\left(\frac{1}{n}\sum_{i=1}^n(X_i - \overline{X})^2\right)^2},
}
\deqn{
\mathrm{Var}\left(\sqrt{b_1}\right) = \frac{6(n-2)}{(n+1)(n+3)},
\quad
E\left(b_2\right) = \frac{3(n-1)}{n+1},
\quad
\mathrm{Var}\left(b_2\right) = \frac{24n(n-2)(n-3)}{(n+1)^2(n+3)(n+5)}.
}
The p-value is computed by Monte Carlo simulation.
}
\value{
  A list with class "htest" containing the following components: 
  \item{statistic}{the value of the adjusted Jarque--Bera statistic.}
  \item{p.value }{the p-value for the test.}
  \item{method}{the character string "Adjusted Jarque-Bera test for normality".}
  \item{data.name}{a character string giving the name(s) of the data.} 
}
\references{Urzua, C. M. (1996): On the correct use of omnibus tests for normality. --- Economics Letters, vol. 53, pp. 247--251.
}

\author{Ilya Gavrilov and Ruslan Pusev}

%\seealso{\code{\link[ctest]{shapiro.test}} for performing the Shapiro-Wilk test for normality. 
%\code{\link{cvm.test}}, \code{\link{lillie.test}}, 
%\code{\link{pearson.test}}, \code{\link{sf.test}} for performing further tests for normality.
%\code{\link{qqnorm}} for producing a normal quantile-quantile plot.}

\examples{
ajb.norm.test(rnorm(100))
ajb.norm.test(abs(runif(100,-2,5)))
}
\keyword{htest}