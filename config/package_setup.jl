const package_setup = [
    (name = :Revise, compile_commands = quote end),
    (name = :OhMyREPL, compile_commands = quote
        OhMyREPL.enable_autocomplete_brackets(true)
    end),
    (name = :BenchmarkTools, compile_commands = quote
        BenchmarkTools.@benchmark sum(1:10)
    end),
    (name = :Infiltrator, compile_commands = quote end),
    (name = :GLMakie, compile_commands = quote
        GLMakie.scatter([1]) |> display
    end)
]
