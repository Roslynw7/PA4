# COP2073c: Programming Assignment 4
# R. Williams
# Section 7.3:  Adding Points, Lines, and Text
# 9/25/2026

# Hypothetical data from the textbook
x <- 1:20

y <- c(-1.49, 3.37, 2.59, -2.78, -3.94, -0.92, 6.43, 8.51,
       3.41, -8.23, -12.01, -6.58, 2.87, 14.12, 9.63, -4.58,
       -14.78, -11.67, 1.17, 15.62)

# Step 1: Create an empty plotting region
plot(x, y, type = "n", main = "")

# Step 2: Add horizontal red dashed lines
abline(h = c(-5, 5), col = "red", lty = 2, lwd = 2)

# Step 3: Add vertical red dotted segments
segments(x0 = c(5, 15), y0 = c(-5, -5),
         x1 = c(5, 15), y1 = c(5, 5),
         col = "red", lty = 3, lwd = 2)

# Step 4: Add points where y is greater than or equal to 5
points(x[y >= 5], y[y >= 5],
       pch = 4, col = "darkmagenta", cex = 2)

# Step 5: Add points where y is less than or equal to -5
points(x[y <= -5], y[y <= -5],
       pch = 3, col = "darkgreen", cex = 2)

# Step 6: Add blue sweet spot points
points(x[(x >= 5 & x <= 15) & (y > -5 & y < 5)],
       y[(x >= 5 & x <= 15) & (y > -5 & y < 5)],
       pch = 19, col = "blue")

# Step 7: Add the remaining points
points(x[(x < 5 | x > 15) & (y > -5 & y < 5)],
       y[(x < 5 | x > 15) & (y > -5 & y < 5)])

# Step 8: Connect the coordinates with lines
lines(x, y, lty = 4)

# Step 9: Add an arrow pointing to the sweet spot
arrows(x0 = 8, y0 = 14, x1 = 11, y1 = 2.5)

# Step 10: Add the sweet spot label
text(x = 8, y = 15, labels = "sweet spot")

# Add the legend
legend("bottomleft",
       legend = c("overall process", "sweet", "standard",
                  "too big", "too small", "sweet y range",
                  "sweet x range"),
       pch = c(NA, 19, 1, 4, 3, NA, NA),
       lty = c(4, NA, NA, NA, NA, 2, 3),
       col = c("black", "blue", "black", "darkmagenta",
               "darkgreen", "red", "red"),
       lwd = c(1, NA, NA, NA, NA, 2, 2),
       pt.cex = c(NA, 1, 1, 2, 2, NA, NA),
       cex = 0.5)