const package_setup = [
    (name=:Revise, compile_commands=quote end),
    (name=:OhMyREPL, compile_commands=quote
        OhMyREPL.enable_autocomplete_brackets(true)
    end),
    (name=:Infiltrator, compile_commands=quote end),
]
