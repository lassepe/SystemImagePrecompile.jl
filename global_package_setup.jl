const global_package_setup = [
    (name = :BenchmarkTools, compile_commands = quote
            BenchmarkTools.@benchmark sum(1:10)
        end),
    (name = :Debugger, compile_commands = quote end),
    (name = :JuliaFormatter, compile_commands = quote
        JuliaFormatter.format(".")
    end),
    (name = :OhMyREPL, compile_commands = quote
            OhMyREPL.enable_autocomplete_brackets(true)
        end),
    (name = :Revise, compile_commands = quote end),
    (
        name = :VegaLite,
        compile_commands = quote
            data = (; x = rand(10), y = rand(10))
            VegaLite.@vlplot(:point, x = data.x, y = data.y)
        end,
    ),
]
