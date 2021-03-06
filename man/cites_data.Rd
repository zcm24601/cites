% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datastorr.R
\name{cites_data}
\alias{cites_data}
\alias{cites_versions}
\alias{cites_version_current}
\alias{cites_del}
\title{Load the CITES database}
\usage{
cites_data(version = NULL, path = NULL)

cites_versions(local = TRUE, path = NULL)

cites_version_current(local = TRUE, path = NULL)

cites_del(version, path = NULL)
}
\arguments{
\item{version}{Version number.  The default will load the most
recent version on your computer or the most recent version known
to the package if you have never downloaded the data before.
With \code{cites_del}, specifying \code{version=NULL} will
delete \emph{all} data sets.}

\item{path}{Path to store the data at.  If not given,
\code{datastorr} will use \code{rappdirs} to find the best place
to put persistent application data on your system.  You can
delete the persistent data at any time by running
\code{cites_del(NULL)} (or \code{cites_del(NULL, path)} if you
use a different path).}

\item{local}{Logical indicating if local or github versions should
be polled.  With any luck, \code{local=FALSE} is a superset of
\code{local=TRUE}.  For \code{cites_version_current}, if
\code{TRUE}, but there are no local versions, then we do check
for the most recent github version.}
}
\description{
This function loads the CITES database as an out-of-memory \strong{dplyr}
table.  It will download the latest database from the remote repo the first
time you use it or if you specify a version of the database not on your
computer.  Available versions can be found at
\url{https://github.com/ecohealthalliance/cites/releases}
}
\details{
More information about the CITES database can be found
\url{https://trade.cites.org/cites_trade_guidelines/en-CITES_Trade_Database_Guide.pdf}
}
