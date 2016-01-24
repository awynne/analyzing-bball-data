#!/usr/bin/env Rscript

#######################################################
# Installing packages
#
# On Linux, the user installing packages may need
# to be in the "staff" group
#
# Install Lahman package: install.packages(Lahman)
# List available tables: data(package="Lahman")
# Install plyr package: install.packages(plyr)
#######################################################

library(Lahman)
data(Pitching)

stats <- function(d) {
    c.SO <- sum(d$SO, na.rm=TRUE)
    c.BB <- sum(d$BB, na.rm=TRUE)
    c.IPouts <- sum(d$IPouts, na.rm=TRUE)
    c.midYear <- median(d$yearID, na.rm=TRUE)
    data.frame(c.SO=c.SO, c.BB=c.BB, c.IPouts=c.IPouts, c.midYear=c.midYear)
}

library(plyr)

career.pitching <- ddply(Pitching, .(playerID), stats)

pitching.stats = merge(Pitching, career.pitching, by="playerID")

career.10000 = subset(pitching.stats, c.IPouts >= 10000)

with(career.10000, plot(c.midYear, c.SO / c.BB))

