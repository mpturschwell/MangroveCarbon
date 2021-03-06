% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emissions_model_simple.R
\name{emissions_model_simple}
\alias{emissions_model_simple}
\title{Simulate cumulative emissions}
\usage{
emissions_model_simple(t, Ainit, d, g, CPerHadef, CperHAdeg)
}
\arguments{
\item{t}{\code{vector} vector of time steps for integration}

\item{Ainit}{\code{numeric} Initial area of forest}

\item{d}{\code{numeric} Instantaneous deforestation rate}

\item{g}{\code{numeric} Instantaneous degradation rate}

\item{CPerHadef}{\code{numeric} Carbon emission potential for deforestation}

\item{CperHAdeg}{\code{numeric} Carbon emission potential for degradation}
}
\value{
A \code{vector} of cumulative carbon emissions.
}
\description{
Simulate cumulative emissions
}
\details{
Numerical integration of carbon emissions. Includes 
degradation and deforestation. Assumes all carbon is emitted as 
soon as deforestation or degradation occur. 
There is no deforestation of degraded forest. 
Primarily used to check against analytical equations.
}
\examples{
years <- seq(0, 50, by = 0.1)
emissions <- emissions_model_simple(years, 100, 0.05, 0.1, 776, 200)
plot(years, emissions)
}
\author{
Christopher J. Brown
}
