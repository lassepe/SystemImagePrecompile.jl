include("../config/package_setup.jl")
for pkg_setup in package_setup
    @info "Generating precompile statements for $(pkg_setup.name)..."
    eval(:(using $(pkg_setup.name): $(pkg_setup.name)))
    eval(pkg_setup.compile_commands)
end
