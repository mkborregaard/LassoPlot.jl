using DataFrames, Lasso, LassoPlot, Plots

x = randn(100)
y = randn(100)
data = DataFrame(x = x, z = y, y = x .+ y .+ randn(100))
m = fit(LassoPath, @formula(y ~ x + z), data)
plot(m)