% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/rp_helpers.R
\name{check.tpl}
\alias{check.tpl}
\title{Check template validity}
\usage{
check.tpl(txt, open.tag = get.tags("header.open"),
  close.tag = get.tags("header.close"), ...)
}
\arguments{
\item{txt}{character vector with template contents}

\item{open.tag}{opening tag regexp}

\item{close.tag}{closing tag regexp}

\item{...}{additional params for tag matching (see \code{\link{grep}})}
}
\description{
Throw error
}

