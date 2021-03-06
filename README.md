# BAMR - Bayesian AMHG + Manning estimation using R

[![Build Status](https://travis-ci.org/markwh/bamr.svg?branch=master)](https://travis-ci.org/markwh/bamr)
[![Coverage Status](https://img.shields.io/codecov/c/github/markwh/bamr/master.svg)](https://codecov.io/github/markwh/bamr?branch=master)


This package is currently under development. But it *can* be used. To install, run the following:

```
# First get devtools package
if (!require("devtools")) {
  install.packages("devtools")
  library("devtools")
}

# Then install from github
install_github("markwh/bamr", args = "--preclean", build_vignettes = FALSE, local = FALSE)
```

The bamr package facilitates Bayesian AMHG + Manning discharge estimation using stream slope, width, and partial cross-section area. It includes functions to preprocess and visualize data, perform Bayesian inference using Hamiltonian Monte Carlo (via models pre-written in the Stan language), and analyze the results. 

The best way to get started is to follow the examples in the included vignette: `vignette("bamr-intro")`

