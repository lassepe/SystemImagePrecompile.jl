const package_setup = [
    (name = :Revise, compile_commands = quote end),
    (name = :JET, compile_commands = quote
        JET.report_package("JET")
    end),
    (name = :OhMyREPL, compile_commands = quote
        OhMyREPL.enable_autocomplete_brackets(true)
    end),
    (name = :BenchmarkTools, compile_commands = quote
        BenchmarkTools.@benchmark sum(1:10)
    end),
    (name = :Infiltrator, compile_commands = quote end),
    (name = :GLMakie, compile_commands = quote
        GLMakie.scatter([1]) |> display
    end),
    (name = :TestEnv, compile_commands = quote end),
    (name = :Symbolics, compile_commands = quote end),
    (name = :JuliaSyntax, compile_commands = quote
        Base.include(@__MODULE__(), joinpath(pkgdir(JuliaSyntax), "sysimage", "precompile_exec.jl"))
    end),
]
