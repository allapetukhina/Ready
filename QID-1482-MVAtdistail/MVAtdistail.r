# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Name of QuantLet : MVAtdistail
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Published in : Applied Multivariate Statistical Analysis
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Description : Plots four tails of probability density functions of the t-distribution 
# and one tail of the Gauss distribution with different degrees of freedom 
# (t3 stands for t-distribution with 3 degrees of freedom, etc).
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Keywords : plot, graphical representation, multivariate, tail, heavy-tailed, pdf, probability, 
# density, t-distribution, distribution, gaussian
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# See also : 
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Author : Wolfgang K. Härdle
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Submitted : Sun, January 29 2012 by Dedy Dwi Prastyo
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−

# clear variables and close windows
rm(list = ls(all = TRUE))
graphics.off()

# Tail comparison of t-distribution
par(mar = c(5, 5, 5, 5))
par(mfrow = c(1, 1))
xx = seq(-6, 6, by = 0.1)
plot(seq(-6, 6, 0.02), dnorm(seq(-6, 6, 0.02)), type = "l", xlim = c(2.5, 4), ylim = c(0, 
    0.04), col = "grey", ylab = "Y", xlab = "X", lwd = 3, cex.lab = 2, cex.axis = 2)
lines(xx, dt(xx, df = 1), xlim = c(2.5, 4), type = "l", col = "black", lwd = 3)
lines(xx, dt(xx, df = 3), xlim = c(2.5, 4), type = "l", col = "blue", lwd = 3)
lines(xx, dt(xx, df = 9), xlim = c(2.5, 4), type = "l", col = "red", lwd = 3)
lines(xx, dt(xx, df = 45), xlim = c(2.5, 4), type = "l", col = "purple", lwd = 3)
legend(x = 3.5, y = 0.04, legend = c("t1", "t3", "t9", "t45", "Gaussian"), pch = c(20, 
    20, 20, 20, 20), col = c("black", "blue", "red", "purple", "grey"), bty = "n")
title("Tail comparison of t-distribution") 
