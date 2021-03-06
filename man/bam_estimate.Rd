% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimate.R
\name{bam_estimate}
\alias{bam_estimate}
\title{Estimate BAM}
\usage{
bam_estimate(bamdata, variant = c("manning", "amhg", "manning_amhg"),
  bampriors = NULL, cores = getOption("mc.cores", default =
  parallel::detectCores()), chains = 3L, iter = 1000L, pars = c("man_rhs",
  "amhg_rhs", "logA_man"), include = FALSE, ...)
}
\arguments{
\item{bamdata}{A bamdata object, as produced by \code{bam_data()}}

\item{variant}{Which BAM variant to use: amhg, manning_amhg, or manning}

\item{bampriors}{A bampriors object. If none is supplied, defaults are used 
from calling \code{bam_priors(bamdata)} (with no other arguments).}

\item{cores}{Number of processing cores for running chains in parallel. 
See \code{?rstan::sampling}. Defaults to \code{parallel::detectCores}.}

\item{chains}{A positive integer specifying the number of Markov chains. 
The default is 3.}

\item{iter}{Number of iterations per chain (including warmup). Defaults to 1000.}

\item{pars}{(passed to rstan::sampling) A vector of character strings specifying 
parameters of interest. For bam_estimate, the default is Stan transformed  
variables, "man_rhs", "amhg_rhs", and "logA_man".}

\item{include}{Defaults to FALSE, which omits parameters specified in 
\code{pars}. If set to TRUE, only the \code{pars} parameters will be returned.}

\item{...}{Other arguments passed to rstan::sampling() for customizing the 
Monte Carlo sampler}
}
\description{
Fits a BAM model of one of several variants using Hamiltonian Monte Carlo.
}
