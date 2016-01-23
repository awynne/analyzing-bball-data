#!/usr/bin/env Rscript

SO <- c(2198,4672,1806,3509,3371,2502,1868,2583,2803)
BB <- c(951,1580,745,1363,999,844,1268,1434,1217)

Name <- c("Pete Alexander", "Roger Clemens", "Pud Galvin",
          "Walter Johnson", "Greg Maddux", "Christy Mathewson",
          "Kid Nichols", "Warren Spahn", "Cy Young")

SO.BB.Ratio <- SO/BB

SO.BB <- data.frame(Name, SO, BB, SO.BB.Ratio)

cat("SO/BB ratio greater than 2.8\n")
subset(SO.BB, SO.BB.Ratio > 2.8)

cat("\nSorted by # of BB \n")
SO.BB[order(SO.BB$BB, decreasing=TRUE),]

