prefix = fn out_string -> (fn in_string -> out_string <> " " <> in_string end) end

super = prefix.("Super")
super.("Peanut")
super.("Man")
prefix.("Super").("Me")
