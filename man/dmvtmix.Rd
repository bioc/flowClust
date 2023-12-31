% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.R
\name{dmvtmix}
\alias{dmvtmix}
\title{Density of the Multivariate t Mixture Distribution with Box-Cox
Tranformation}
\usage{
dmvtmix(x, w, mu, sigma, nu, lambda, object, subset, include, log = FALSE)
}
\arguments{
\item{x}{A matrix or data frame of size \eqn{N \times P}{N x P}, where
\eqn{N} is the number of observations and \eqn{P} is the dimension.  Each
row corresponds to one observation.}

\item{w}{A numeric vector of length \eqn{K} containing the cluster
proportions.}

\item{mu}{A matrix of size \eqn{K \times P}{K x P} containing the \eqn{K}
mean vectors.}

\item{sigma}{An array of size \eqn{K \times P \times P}{K x P x P}
containing the \eqn{K} covariance matrices.}

\item{nu}{A numeric vector of length \eqn{K} containing the degrees of
freedom used for the \eqn{t} distribution. If only one value is specified
for \code{nu}, then it is used for all \eqn{K} clusters. If \code{nu=Inf},
Gaussian distribution will be used.}

\item{lambda}{The Box-Cox transformation parameter.  If missing, the
conventional \eqn{t} distribution without transformation will be used.}

\item{object}{An optional argument.  If provided, it's an object returned
from \code{\link{flowClust}}, and the previous arguments will be assigned
values from the corresponding slots of \code{object}.}

\item{subset}{An optional argument.  If provided, it's a numeric vector
indicating which variables are selected for computing the densities.  If
\code{object} is provided and \code{object@varNames} is not \code{NULL},
then a character vector containing the names of the variables is allowed.}

\item{include}{An optional argument.  If provided, it's a numeric vector
specifying which clusters are included for computing the densities.}

\item{log}{A logical value.  If \code{TRUE} then the logarithm of the
densities is returned.}
}
\value{
A vector of length \eqn{N} containing the density values.
}
\description{
This function computes the densities at the inputted points of the
multivariate \eqn{t} mixture distribution with Box-Cox transformation.
}
\author{
Raphael Gottardo <\email{raph@stat.ubc.ca}>, Kenneth Lo
<\email{c.lo@stat.ubc.ca}>
}
\keyword{distribution}
