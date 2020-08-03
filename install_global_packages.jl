#!/usr/bin/env julia

import Pkg

Pkg.add("PackageCompiler")

include("global_package_setup.jl")
for pkg_setup in global_package_setup
    Pkg.add(string(pkg_setup.name))
end

Pkg.update()
