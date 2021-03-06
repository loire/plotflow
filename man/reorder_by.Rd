\name{reorder_by}
\alias{reorder_by}
\title{Order a Factor by Numeric Variable(s)}
\usage{
reorder_by(fact, by, data, FUN = NULL, df = TRUE)
}
\arguments{
  \item{fact}{The factor to be reordered (re-leveled).}

  \item{by}{A formula to order the factor by.}

  \item{data}{A \code{data.frame} object.}

  \item{FUN}{A function to compute the summary statistics
  which can be applied to all data subsets.}

  \item{df}{logical.  If \code{TRUE} a dataframe is
  returned.  If \code{FALSE} a factor vector is returned.}
}
\value{
Returns a re-ordered (re-leveled) dataframe, factor vector,
or levels.
}
\description{
Create a new dataframe with a factor reordered (re-leveled)
by numeric variable(s).
}
\examples{
\dontrun{
## EXAMPLE 1 - no aggregation ##

## Make a fake data set
dat <- aggregate(cbind(mpg, hp, disp)~carb, mtcars, mean)
dat$carb <- factor(dat$carb)

## compare levels (data set looks the same though)
dat$carb
reorder_by(carb, ~-hp + -mpg, data = dat)$carb

library(ggplot2)
## Unordered bars
ggplot(dat, aes(x=carb, y=mpg)) +
    geom_bar(stat="identity") +
    coord_flip()

## Ordered bars
ggplot(reorder_by(carb, ~mpg, dat), aes(x=carb, y=mpg)) +
    geom_bar(stat="identity") +
    coord_flip()

## Return just the vector with new levels
reorder_by(carb, ~-hp + -mpg, dat, df=FALSE)

## EXAMPLE 2 - with aggregation ##

mtcars2 <- reorder_by(gear, ~hp + -carb, mtcars, mean)

## Without re-leveling gear
ggplot(mtcars, aes(mpg, hp)) +
    geom_point(aes(color=factor(cyl))) +
    facet_grid(gear~.)

## After re-leveling gear
ggplot(mtcars2, aes(mpg, hp)) +
    geom_point(aes(color=factor(cyl))) +
    facet_grid(gear~.)
}
}
\author{
Thomas Wutzler and Tyler Rinker <tyler.rinker@gmail.com>.
}
\references{
The majority of this code is taken directly from Thomas
Wutzler's blog post:
\url{http://rwiki.sciviews.org/doku.php?id=tips\%3adata-frames\%3asort}
}
\keyword{factor}
\keyword{order}
\keyword{plot}
\keyword{sort}

