% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/styles.R
\name{lint_with_style}
\alias{lint_with_style}
\title{Lint a file, using a known style}
\usage{
lint_with_style(filename, style, threshold = 0.01)
}
\arguments{
\item{filename}{path to the file to check}

\item{style}{a style data frame, as created by \code{\link{extract_style}}}

\item{threshold}{the proportional occurrence threshold above which a lint is ignored}
}
\description{
Apply a style extracted using \code{\link{extract_style}}: lint a file,
checking only for errors that appear to be prohibited in that style.
}
\examples{
# Get a copy of the profile of lints from the purrr package
data("style_purrr")

# Get the path to a file to check
path <- system.file("extdata", 'styles.R', package='adaptalint')

# Check this file against the lint profile of purrr
lint_with_style(filename = path, style = style_purrr)
}
