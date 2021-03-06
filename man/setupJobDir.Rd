% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{setupJobDir}
\alias{setupJobDir}
\title{Create empty directory for run}
\usage{
setupJobDir(jobName, outputDir)
}
\arguments{
\item{jobName}{Name of the run.}

\item{outputDir}{Path to directory where to create the output directory.}
}
\value{
Path to newly created directory.
}
\description{
Creates a directory at provided path named to the jobname.
}
\examples{
setupJobDir("job_name", "path/to/outdir")
}
