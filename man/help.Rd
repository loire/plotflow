\name{gghelp}
\alias{ggcook}
\alias{gghelp}
\title{Open Help Pages for ggplot2}
\usage{
gghelp(FUN)

ggcook()
}
\arguments{
  \item{FUN}{A particular ggplot function to reference.
  Default is the index page.}
}
\value{
Opens a help web page.
}
\description{
\code{gghelp} - Open Hadely Wickham's ggplot2
\href{http://docs.ggplot2.org/current/}{web page}.

\code{ggcook} - Open Winston Chang's ggplot2
\href{http://www.cookbook-r.com/Graphs/}{Cookbook for R
page}.
}
\examples{
\dontrun{
gghelp()
gghelp("theme")
ggcook()
}
}
\seealso{
\code{\link[utils]{browseURL}}
}

