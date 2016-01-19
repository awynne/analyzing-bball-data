#!/usr/bin/env Rscript

outcomes <- c("Single", "Out", "Out", "Single", "Out", "Double", "Out", 
              "Walk", "Out", "Single")

table(outcomes)

f.outcomes <- factor(outcomes, 
    levels=c("Out", "Walk", "Single", "Double"))

table(f.outcomes)

#2d - This prints whether each element of outcomes is a walk
outcomes == "Walk"

#2d - This sums the number of walks
sum(outcomes == "Walk")

