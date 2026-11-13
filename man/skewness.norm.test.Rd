\name{skewness.norm.test}
\alias{skewness.norm.test}
\title{Skewness test for normality}
\description{
  Performs skewness test for the composite hypothesis of normality, 
  see, e.g., Shapiro, Wilk and Chen (1968).
}
\usage{
skewness.norm.test(x, nrepl=2000)
}
\arguments{
  \item{x}{a numeric vector of data values.} %Missing values are allowed.
  \item{nrepl}{the number of replications in Monte Carlo simulation.}
}
\details{The skewness test for normality is based on the sample skewness:
\deqn{
\sqrt{b_1} = \frac{\frac{1}{n}\sum_{i=1}^n(X_i - \overline{X})^3}{\left(\frac{1}{n}\sum_{i=1}^n(X_i - \overline{X})^2\right)^{3/2}},
}
The p-value is computed by Monte Carlo simulation.
}
\value{
  A list with class "htest" containing the following components: 
  \item{statistic}{the value of the sample skewness.}
  \item{p.value }{the p-value for the test.}
  \item{method}{the character string "Skewness test for normality".}
  \item{data.name}{a character string giving the name(s) of the data.} 
}
\references{Shapiro, S. S., Wilk, M. B. and Chen, H. J. (1968): A comparative study of various tests for normality. --- Journal of the American Statistical Association, vol. 63, pp. 1343--1372.
}

\author{Ilya Gavrilov and Ruslan Pusev}

%\seealso{\code{\link[ctest]{shapiro.test}} for performing the Shapiro-Wilk test for normality. 
%\code{\link{cvm.test}}, \code{\link{lillie.test}}, 
%\code{\link{pearson.test}}, \code{\link{sf.test}} for performing further tests for normality.
%\code{\link{qqnorm}} for producing a normal quantile-quantile plot.}

\examples{
skewness.norm.test(rnorm(100))
skewness.norm.test(abs(runif(100,-2,5)))
}
\keyword{htest}