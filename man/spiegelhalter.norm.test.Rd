\name{spiegelhalter.norm.test}
\alias{spiegelhalter.norm.test}
\title{Spiegelhalter test for normality}
\description{
  Performs Spiegelhalter test for the composite hypothesis of normality, 
  see Spiegelhalter (1977).
}
\usage{
spiegelhalter.norm.test(x, nrepl=2000)
}
\arguments{
  \item{x}{a numeric vector of data values.} %Missing values are allowed.
  \item{nrepl}{the number of replications in Monte Carlo simulation.}
}
\details{The Spiegelhalter test for normality is based on the following statistic:
\deqn{
T = \left( (c_nu)^{-(n-1)}+g^{-(n-1)} \right)^{1/(n-1)},
}
where
\deqn{
u=\frac{X_{(n)}-X_{(1)}}{s},
\quad
g=\frac{\sum_{i=1}^n|X_i-\overline{X}|}{s\sqrt{n(n-1)}},
\quad
c_n=\frac{(n!)^{1/(n-1)}}{2n},
\quad
s^2=\frac{1}{n-1}\sum_{i=1}^n(X_i-\overline{X})^2.
}
The p-value is computed by Monte Carlo simulation.
}
\value{
  A list with class "htest" containing the following components: 
  \item{statistic}{the value of the Geary statistic.}
  \item{p.value }{the p-value for the test.}
  \item{method}{the character string "Spiegelhalter test for normality".}
  \item{data.name}{a character string giving the name(s) of the data.} 
}
\references{Spiegelhalter, D. J. (1977): A test for normality against symmetric alternatives. --- Biometrika, vol. 64, pp. 415--418.
}

\author{Ilya Gavrilov and Ruslan Pusev}

%\seealso{\code{\link[ctest]{shapiro.test}} for performing the Shapiro-Wilk test for normality. 
%\code{\link{cvm.test}}, \code{\link{lillie.test}}, 
%\code{\link{pearson.test}}, \code{\link{sf.test}} for performing further tests for normality.
%\code{\link{qqnorm}} for producing a normal quantile-quantile plot.}

\examples{
spiegelhalter.norm.test(rnorm(100))
spiegelhalter.norm.test(rexp(100))
}
\keyword{htest}