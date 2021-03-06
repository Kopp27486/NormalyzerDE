% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/normMethods.R
\name{performQuantileNormalization}
\alias{performQuantileNormalization}
\title{Quantile normalization is performed by the function "normalize.quantiles"
from the package preprocessCore.}
\usage{
performQuantileNormalization(rawMatrix, noLogTransform = FALSE)
}
\arguments{
\item{rawMatrix}{Target matrix to be normalized}

\item{noLogTransform}{Assumes no need for log transformation}
}
\value{
Normalized matrix
}
\description{
It makes the assumption that the data in different samples should originate
from an identical distribution. It does this by generating a reference
distribution and then scaling the other samples accordingly.
}
\examples{
data(example_data_only_values_small)
normMatrix <- performQuantileNormalization(example_data_only_values)
}
