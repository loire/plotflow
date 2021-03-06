\name{panel_remover}
\alias{panel_remover}
\title{Remove Specific strip.background}
\usage{
panel_remover(ggplot_obj, y = TRUE)
}
\arguments{
  \item{ggplot_obj}{A ggplot2 object with strip.background
  (produced from \code{\link[ggplot2]{facet_grid}}).}

  \item{y}{logical.  If \code{TRUE} the y axis
  strip.background is removed. If \code{FALSE} the x axis
  strip.background is removed.}
}
\value{
Returns a ggplot2 object with specific
\href{http://docs.ggplot2.org/current/theme.html}{strip.background}.
removed.
}
\description{
Remove a specific strip.background from a ggplot2
\code{\link[ggplot2]{facet_grid}} object.
}
\examples{
a <- ggplot(mtcars, aes(mpg, hp)) +
  geom_point() +
  facet_grid(cyl~gear)

panel_remover(a)
panel_remover(a, FALSE)
}
\author{
Roland (stackoverflow.com) and Tyler
Rinker<tyler.rinker@gmail.com>
}
\references{
\url{http://stackoverflow.com/a/19064621/1000343}
}
\seealso{
\code{\link[ggplot2]{theme}}
}
\keyword{strip.background}

