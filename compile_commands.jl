include("global_package_setup.jl")
for pkg_setup in global_package_setup
    @info "Generating precompile statements for $(pkg_setup.name)..."
    import_expr = :(import $(pkg_setup.name))
    eval(import_expr)
    eval(pkg_setup.compile_commands)
end
