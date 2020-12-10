include("package_setup.jl")
for pkg_setup in package_setup
    @info "Generating precompile statements for $(pkg_setup.name)..."
    eval(:(import $(pkg_setup.name)))
    eval(pkg_setup.compile_commands)
end
