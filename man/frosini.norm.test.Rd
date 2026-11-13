\name{frosini.norm.test}
\alias{frosini.norm.test}
\title{Frosini test for normality}
\description{
  Performs Frosini test for the composite hypothesis of normality, 
  see e.g. Frosini (1987).
}
\usage{
frosini.norm.test(x, nrepl=2000)
}
\arguments{
  \item{x}{a numeric vector of data values.} %Missing values are allowed.
  \item{nrepl}{the number of replications in Monte Carlo simulation.}
}
\details{The Frosini test for normality is based on the following statistic:
\deqn{
B_n = \frac{1}{\sqrt{n}}\sum_{i=1}^n{\left|\Phi(Y_i) - \frac{i-0.5}{n} \right|},
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
  \item{statistic}{the value of the Frosini statistic.}
  \item{p.value }{the p-value for the test.}
  \item{method}{the character string "Frosini test for normality".}
  \item{data.name}{a character string giving the name(s) of the data.} 
}
\references{Frosini, B.V. (1987): On the distribution and power of a goodness-of-fit statistic with parametric and nonparametric applications, "Goodness-of-fit". (Ed. by Revesz P., Sarkadi K., Sen P.K.) --- Amsterdam-Oxford-New York: North-Holland. --- Pp. 133--154.
}

\author{Ilya Gavrilov and Ruslan Pusev}

%\seealso{\code{\link[ctest]{shapiro.test}} for performing the Shapiro-Wilk test for normality. 
%\code{\link{cvm.test}}, \code{\link{lillie.test}}, 
%\code{\link{pearson.test}}, \code{\link{sf.test}} for performing further tests for normality.
%\code{\link{qqnorm}} for producing a normal quantile-quantile plot.}

\examples{
frosini.norm.test(rnorm(100))
frosini.norm.test(runif(100,-1,1))
}
\keyword{htest}