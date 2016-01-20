#!/usr/bin/env Rscript

W <- c(373,354,364,417,355,373,361,363,511)
L <- c(208,184,310,279,227,188,208,245,316)

Name <- c("Pete Alexander", "Roger Clemens", "Pud Galvin",
          "Walter Johnson", "Greg Maddux", "Christy Mathewson",
          "Kid Nichols", "Warren Spahn", "Cy Young")

Win.PCT = 100 * W / (W+L)

Wins.350 <- data.frame(Name, W, L, Win.PCT)

Wins.350[order(Wins.350$Win.PCT, decreasing=TRUE),]

