\name{hegazy2.norm.test}
\alias{hegazy2.norm.test}
\title{Hegazy--Green test for normality}
\description{
  Performs Hegazy--Green test for the composite hypothesis of normality, 
  see e.g. Hegazy and Green (1975).
}
\usage{
hegazy2.norm.test(x, nrepl=2000)
}
\arguments{
  \item{x}{a numeric vector of data values.} %Missing values are allowed.
  \item{nrepl}{the number of replications in Monte Carlo simulation.}
}
\details{The Hegazy--Green test for normality is based on the following statistic:
\deqn{
T_2 = \frac{1}{n}\sum_{i=1}^n{\left(Y_{i}-\Phi^{-1}{\left(\frac{i}{n+1}\right)}\right)^2}.
}
where
\deqn{
Y_i=\frac{X_{(i)}-\overline{X}}{s},
\quad
s^2=\frac{1}{n}\sum_{i=1}^n(X_i-\overline{X})^2.
}
The p-value is computed by Monte Carlo simulation.
}
\value{
  A list with class "htest" containing the following components: 
  \item{statistic}{the value of the Hegazy--Green statistic.}
  \item{p.value }{the p-value for the test.}
  \item{method}{the character string "Hegazy-Green test for normality".}
  \item{data.name}{a character string giving the name(s) of the data.} 
}
\references{Hegazy, Y. A. S. and Green, J. R. (1975): Some new goodness-of-fit tests using order statistics. --- Journal of the Royal Statistical Society. Series C (Applied Statistics), vol. 24, pp. 299--308.
}

\author{Gavrilov Ilya and Ruslan Pusev}

%\seealso{\code{\link[ctest]{shapiro.test}} for performing the Shapiro-Wilk test for normality. 
%\code{\link{cvm.test}}, \code{\link{lillie.test}}, 
%\code{\link{pearson.test}}, \code{\link{sf.test}} for performing further tests for normality.
%\code{\link{qqnorm}} for producing a normal quantile-quantile plot.}

\examples{
hegazy2.norm.test(rnorm(100))
hegazy2.norm.test(runif(100,-1,1))
}
\keyword{htest}