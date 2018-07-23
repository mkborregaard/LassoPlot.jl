# LassoPlot

| Linux/MacOS | Windows | Code |
| --- | --- | --- |
| [![][travis-img]][travis-url]  | [![][appveyor-img]][appveyor-url]  | [![][coveralls-img]][coveralls-url] |

LassoPlot.jl is a companion package to [Lasso.jl](https://github.com/simonster/Lasso.jl) which plots regularization paths in a similar fashion to the glmnet and gamlr R packages.

## Quick start

first fit a Lasso path

```julia
using Lasso, LassoPath
path = fit(LassoPath, X, y, dist, link)
```

then plot it
```julia
plot(path)
```

Use x=:segment, :λ, or :logλ to change the x-axis, as in:
```julia
plot(path; x=:logλ)
```

The following keyword arguments can be used:

By default it shows non zero coefficients at the AICc in color and the rest grayed out.

Use selectedvars to select a subset of the variables to present.

The minimum AICc segment is represented by a solid vertical line and the CVmin and CV1se cross-validation selected segments in dashed vertical lines.

To specify other selection criteria use the select=:AICc, :CVmin, or :CV1se.

Vertical lines are determined by showselectors=[:AICc,:CVmin,:CV1se].

varnames can be used to specify variable names.

[travis-img]: https://travis-ci.org/AsafManela/LassoPlot.jl.svg?branch=master
[travis-url]: https://travis-ci.org/AsafManela/LassoPlot.jl

[appveyor-img]: https://ci.appveyor.com/api/projects/status/github/AsafManela/LassoPlot.jl?svg=true
[appveyor-url]: https://ci.appveyor.com/project/AsafManela/lassoplot-jl

[coveralls-img]: https://coveralls.io/repos/AsafManela/LassoPlot.jl/badge.svg?branch=master
[coveralls-url]: https://coveralls.io/r/AsafManela/LassoPlot.jl?branch=master

[pkg-0.6-img]: http://pkg.julialang.org/badges/LassoPlot_0.6.svg
[pkg-0.6-url]: http://pkg.julialang.org/?pkg=LassoPlot&ver=0.6
[pkg-0.7-img]: http://pkg.julialang.org/badges/LassoPlot_0.7.svg
[pkg-0.7-url]: http://pkg.julialang.org/?pkg=LassoPlot&ver=0.7
