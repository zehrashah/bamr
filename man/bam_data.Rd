% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataprep.R
\name{bam_data}
\alias{bam_data}
\title{Preprocess data for BAM estimation}
\usage{
bam_data(w, s = NULL, dA = NULL, Qhat, max_xs = 30L, seed = NULL,
  missing = c("omit", "impute"))
}
\arguments{
\item{w}{Matrix (or data frame) of widths: time as columns, space as rows}

\item{s}{Matrix of slopes: time as columns, space as rows}

\item{dA}{Matrix of area above base area: time as columns, space as rows}

\item{Qhat}{Vector of Q estimates. Needed to create prior on Q.}

\item{max_xs}{Maximum number of cross-sections to allow in data. Used to reduce 
sampling time. Defaults to 30.}

\item{seed}{RNG seed to use for sampling cross-sections, if nx > max_xs.}

\item{missing}{How to treat missing values in data? Currently the only option is
"omit", which omits times with missing observations.}
}
\description{
Produces a bamdata object that can be passed to bam_estimate function
}
