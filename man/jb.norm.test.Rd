\name{jb.norm.test}
\alias{jb.norm.test}
\title{Jarque--Bera test for normality}
\description{
  Performs Jarque--Bera test for the composite hypothesis of normality, 
  see Jarque and Bera (1987).
}
\usage{
jb.norm.test(x, nrepl=2000)
}
\arguments{
  \item{x}{a numeric vector of data values.} %Missing values are allowed.
  \item{nrepl}{the number of replications in Monte Carlo simulation.}
}
\details{The Jarque--Bera test for normality is based on the following statistic:
\deqn{
JB = \frac{n}{6}\left((\sqrt{b_1})^2 + \frac{(b_2-3)^2}{4}\right),
}
where
\deqn{
b_1 = \frac{\frac{1}{n}\sum_{i=1}^n(X_i - \overline{X})^3}{\frac{1}{n}(\sum_{i=1}^n(X_i - \overline{X})^2)^{3/2}},
}
\deqn{
b_2 = \frac{\frac{1}{n}\sum_{i=1}^n(X_i - \overline{X})^4}{\frac{1}{n}(\sum_{i=1}^n(X_i - \overline{X})^2)^2}.
}
The p-value is computed by Monte Carlo simulation.
}
\value{
  A list with class "htest" containing the following components: 
  \item{statistic}{the value of the Jarque--Bera statistic.}
  \item{p.value }{the p-value for the test.}
  \item{method}{the character string "Jarque-Bera test for normality".}
  \item{data.name}{a character string giving the name(s) of the data.} 
}
\references{Jarque, C. M. and Bera, A. K. (1987): A test for normality of observations and regression residuals. --- International Statistical Review, vol. 55, pp. 163--172.
}

\author{Ilya Gavrilov and Ruslan Pusev}

%\seealso{\code{\link[ctest]{shapiro.test}} for performing the Shapiro-Wilk test for normality. 
%\code{\link{cvm.test}}, \code{\link{lillie.test}}, 
%\code{\link{pearson.test}}, \code{\link{sf.test}} for performing further tests for normality.
%\code{\link{qqnorm}} for producing a normal quantile-quantile plot.}

\examples{
jb.norm.test(rnorm(100))
jb.norm.test(abs(runif(100,-2,5)))
}
\keyword{htest}