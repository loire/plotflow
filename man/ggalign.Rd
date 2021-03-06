\name{ggalign}
\alias{ggalign}
\title{Align ggplot2 Graph Edges}
\usage{
ggalign(plot1, plot2, plot = TRUE)
}
\arguments{
  \item{plot1}{A ggplot2 plot.}

  \item{plot2}{A ggplot2 plot.}

  \item{plot}{logical.  If \code{TRUE} the plot will
  automatically plot. The user may wish to set to
  \code{FALSE} for use in knitr, sweave, etc. to add
  additional plot layers.}
}
\value{
Returns a stacked grid object with left/right edges
aligned.
}
\description{
Align ggplot2 graph edges.
}
\examples{
require(ggplot2)
A <- ggplot(CO2, aes(x=Plant)) + geom_bar() + coord_flip()
B <- ggplot(CO2, aes(x=Type)) + geom_bar() + coord_flip()
ggalign(A, B)
}
\author{
Baptiste Auguie
}
\references{
\url{http://stackoverflow.com/a/13295880/1000343}
}
\keyword{align}

