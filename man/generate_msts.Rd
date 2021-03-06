% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generate_ts.R
\name{generate_msts}
\alias{generate_msts}
\title{Generate mutiple seasonal time series from random parameter spaces of the mixture autoregressive (MAR) models.}
\usage{
generate_msts(seasonal.periods = c(7, 365), n = 800, nComp = NULL)
}
\arguments{
\item{seasonal.periods}{a vector of seasonal periods of the time series to be generated.}

\item{n}{length of the generated time series.}

\item{nComp}{number of mixing components when simulating time series using MAR models.}
}
\value{
a time series with multiple seasonal periods.
}
\description{
Generate mutiple seasonal time series from random parameter spaces of the mixture autoregressive (MAR) models.
}
\examples{
x <- generate_msts(seasonal.periods = c(7, 365), n = 800, nComp = 2)
forecast::autoplot(x)
}
