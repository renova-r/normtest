\name{geary.norm.test}
\alias{geary.norm.test}
\title{Geary test for normality}
\description{
  Performs Geary test for the composite hypothesis of normality, 
  see Geary (1935).
}
\usage{
geary.norm.test(x, nrepl=2000)
}
\arguments{
  \item{x}{a numeric vector of data values.} %Missing values are allowed.
  \item{nrepl}{the number of replications in Monte Carlo simulation.}
}
\details{The Geary test for normality is based on the following statistic:
\deqn{
d = \frac{1}{ns}\sum_{i=1}^n|X_i-\overline{X}|,
}
where
\deqn{
s^2=\frac{1}{n}\sum_{i=1}^n(X_i-\overline{X})^2.
}
The p-value is computed by Monte Carlo simulation.
}
\value{
  A list with class "htest" containing the following components: 
  \item{statistic}{the value of the Geary statistic.}
  \item{p.value }{the p-value for the test.}
  \item{method}{the character string "Geary test for normality".}
  \item{data.name}{a character string giving the name(s) of the data.} 
}
\references{Geary, R. C. (1935): The ratio of the mean deviation to the standard deviation as a test of normality. --- Biometrika, vol. 27, pp. 310--332.
}

\author{Ilya Gavrilov and Ruslan Pusev}

%\seealso{\code{\link[ctest]{shapiro.test}} for performing the Shapiro-Wilk test for normality. 
%\code{\link{cvm.test}}, \code{\link{lillie.test}}, 
%\code{\link{pearson.test}}, \code{\link{sf.test}} for performing further tests for normality.
%\code{\link{qqnorm}} for producing a normal quantile-quantile plot.}

\examples{
geary.norm.test(rnorm(100))
geary.norm.test(runif(100,-1,1))
}
\keyword{htest}