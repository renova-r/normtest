\name{wb.norm.test}
\alias{wb.norm.test}
\title{Weisberg--Bingham test for normality}
\description{
  Performs Weisberg--Bingham test for the composite hypothesis of normality, 
  see Weisberg and Bingham (1975).
}
\usage{
wb.norm.test(x, nrepl=2000)
}
\arguments{
  \item{x}{a numeric vector of data values.} %Missing values are allowed.
  \item{nrepl}{the number of replications in Monte Carlo simulation.}
}
\details{The Weisberg--Bingham test for normality is based on the following statistic:
\deqn{
WB = \frac{(\sum_{i=1}^nm_iX_{(i)})^2/\sum_{i=1}^nm_i^2}{\sum_{i=1}^n(X_i-\overline{X})^2},
}
where
\deqn{
m_i=\Phi^{-1}\left(\frac{i-3/8}{n+1/4}\right).
}
The p-value is computed by Monte Carlo simulation.
}
\value{
  A list with class "htest" containing the following components: 
  \item{statistic}{the value of the Weisberg--Bingham statistic.}
  \item{p.value }{the p-value for the test.}
  \item{method}{the character string "Weisberg-Bingham test for normality".}
  \item{data.name}{a character string giving the name(s) of the data.} 
}
\references{Weisberg, S. and Bingham, C. (1975): An approximate analysis of variance test for non-normality suitable for machine calculation. --- Technometrics, vol. 17, pp. 133--134.
}

\author{Ilya Gavrilov and Ruslan Pusev}

%\seealso{\code{\link[ctest]{shapiro.test}} for performing the Shapiro-Wilk test for normality. 
%\code{\link{cvm.test}}, \code{\link{lillie.test}}, 
%\code{\link{pearson.test}}, \code{\link{sf.test}} for performing further tests for normality.
%\code{\link{qqnorm}} for producing a normal quantile-quantile plot.}

\examples{
wb.norm.test(rnorm(100))
wb.norm.test(runif(100,-1,1))
}
\keyword{htest}