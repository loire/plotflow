\name{fill_by_column}
\alias{fill_by_column}
\title{Fill facet_wrap By Column}
\usage{
fill_by_column(dataframe, fact, ncol = 2)
}
\arguments{
  \item{dataframe}{A data.frame object.}

  \item{fact}{The factor to be reordered (re-leveled) to
  fill by column.}

  \item{ncol}{Number of columns to make the plot}
}
\description{
Alter the data set to fill ggplot2's
\code{\link[ggplot2]{facet_wrap}} by column rather than
row.
}
\examples{
library(ggplot2); library(reshape2)
dat <- aggregate(cbind(vs, am, gear, cyl) ~ carb, mtcars, sum)
dat$carb <- factor(dat$carb, rev(dat$carb[order(rowSums(dat[, -1]))]))
mdat <- melt(dat)

ggplot(mdat, aes(x = variable)) +
  geom_bar(stat="bin", aes(fil=variable, weights = value)) +
  facet_wrap(~carb, ncol = 2) + coord_flip()

ggplot(fill_by_column(mdat, "carb"), aes(x = variable)) +
  geom_bar(stat="bin", aes(fil=variable, weights = value)) +
  facet_wrap(~carb, ncol = 2) + coord_flip()

ggplot(fill_by_column(mdat, "carb", 3), aes(x = variable)) +
  geom_bar(stat="bin", aes(fil=variable, weights = value)) +
  facet_wrap(~carb, ncol = 3) + coord_flip()
}
\author{
jem77bfp (stackoverflow.com) and Tyler Rinker
<tyler.rinker@gmail.com>
}
\references{
\url{http://stackoverflow.com/a/12893273/1000343}
}

