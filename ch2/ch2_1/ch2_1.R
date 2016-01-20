#!/usr/bin/env Rscript

players <- c("Ricky Henderson", "Lou Brock", "Ty Cobb",
             "Eddie Collins", "Max Carey", "Joe Morgan",
             "Luis Aparicio", "Paul Molitor", "Roberto Alomar")

SB <- c(1406,938,897,741,738,689,506,504,474)
CS <- c(335,307,212,195,109,162,136,131,114)
G <- c(3081,2616,3034,2826,2476,2649,2599,2683,2379)

SB.Attempt = SB + CS
Success.Rate = SB/SB.Attempt
SB.Game = SB / G

plot(SB.Game, Success.Rate)
text(SB.Game, Success.Rate, labels=players, cex=0.7, pos=3)

## Exercise 1e
#
#* Max Carey's SB success rate is much higher than the rest.  Lou Brock's 
#  success rate is the lowest
#* Ricky henderson has the highest number of stolen bases per game
