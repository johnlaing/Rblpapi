% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/bdp.R
\name{bdp}
\alias{bdp}
\title{Run 'Bloomberg Data Point' Queries}
\usage{
bdp(securities, fields, options = NULL, overrides = NULL, identity = NULL,
  con = defaultConnection())
}
\arguments{
\item{securities}{A character vector with security symbols in
Bloomberg notation.}

\item{fields}{A character vector with Bloomberg query fields.}

\item{options}{An optional named character vector with option
values. Each field must have both a name (designating the option
being set) as well as a value.}

\item{overrides}{An optional named character vector with override
values. Each field must have both a name (designating the override
being set) as well as a value.}

\item{identity}{An optional identity object.}

\item{con}{A connection object as created by a \code{blpConnect}
call, and retrieved via the internal function
\code{defaultConnection}.}
}
\value{
A data frame with as a many rows as entries in
\code{securities} and columns as entries in \code{fields}.
}
\description{
This function uses the Bloomberg API to retrieve 'bdp' (Bloomberg
Data Point) queries
}
\examples{
\dontrun{
  bdp(c("ESA Index", "SPY US Equity"), c("PX_LAST", "VOLUME"))

  ##  using overrides (cf https://github.com/Rblp/Rblpapi/issues/67)
  bdp("EN00 Index", "MLI_OAS", overrides=c(MLI_DATE="20150831"))
}
}
\author{
Whit Armstrong and Dirk Eddelbuettel
}

