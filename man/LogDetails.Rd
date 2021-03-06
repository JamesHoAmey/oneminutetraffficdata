% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/secondaryscripts.R
\name{LogDetails}
\alias{LogDetails}
\title{Combine Logs with Traffic Count Data}
\usage{
LogDetails(data, directory)
}
\arguments{
\item{data}{The data that the user wishes to investigate.}

\item{directory}{A string (without a "/" or "\\" character on the start or end of
the string) which points to the directory (from the current working directory) that
the user's log files (.mal, .mfl, .mol, .msl, .mal.bz2, .mfl.bz2, .mol.bz2, msl.bz2)
are stored. These files must be stored within this directory only and cannot be in
any subfolders of this directory. Their names must also follow the "XXDDMMYY" format
as downloaded from the MIDAS website, where "XX" denotes the control office, "DD"
denotes the day, "MM" denotes the month, and "YY" denotes the year. It is not necessary
to have all of these files, as the function will only scrape data out of what is provided.}
}
\value{
A version of the format of \code{data}, where there are up to four additional columns,
depending on what relevant logs are found within the provided files. Alert, fault, operation and
software exception logs are put into their own columns, and in the row which corresponds to the
minute duration that the data was logged in. In the case of multiple logs of the same type and
minute duration, they are seperated with a semicolon (;).
}
\description{
Motorway Incident Detection and Automatic Signalling (MIDAS) is a
sensor based network along UK motorways, and is designed to collect data regarding
traffic flows, average speeds and road occupancy, amongst other features, on the
road network. This data can be accessed via the MIDAS website
\url{https://www.midas-data.org.uk/} (login required) in the form of .tcd.bz2 files.

The function \code{LogDetails} allows the user to collect data from any relevant
locally-stored MIDAS logs (alerts, operations, faults and software exceptions) and
add additional columns on the provided dataframe that display the logs.
}
\examples{
M25DataWithLogs <- LogDetails(M25Data, "LogsDirectory")

}
\author{
RAC Foundation, Luke Hudlass-Galley
}
