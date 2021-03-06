\name{ggplot_col}
\alias{ggplot_col}
\title{Globally Set ggplot2 Colors}
\usage{
ggplot_col(col = "black", fill = TRUE, colour = TRUE, reset = TRUE)
}
\arguments{
  \item{col}{A single color character string.}

  \item{fill}{logical.  If \code{TRUE} fill is globally
  altered.}

  \item{colour}{logical.  If \code{TRUE} colour is globally
  altered.}

  \item{reset}{logical.  If colour and fill are reset to
  black before applying new color.}
}
\description{
Globally set the color and fill of ggplot2.
}
\examples{
ggplot_col("purple")

ggplot(mtcars, aes(factor(cyl))) + geom_bar()
ggplot(mtcars, aes(hp, mpg, group = factor(cyl))) + geom_point()
}
\references{
\url{http://stackoverflow.com/a/21175042/1000343}
}
\seealso{
\code{\link[ggplot2]{update_geom_defaults}}
}

