# prefix = fn out_string -> (fn in_string -> out_string <> " " <> in_string end) end

# super = prefix.("Super")
# super.("Peanut")
# super.("Man")
# prefix.("Super").("Me")

# prefix = fn
#   (a) -> (fn b -> a <> " " <> b end)
#   (a, b) -> (a <> " " <> b)
# end
#
# super = prefix.("Super")
# super.("Peanut")
# super.("Man")
# prefix.("Super").("Me")

defmodule Curry do
  def prefixer(a), do: fn b -> prefixer(a, b) end
  def prefixer(a, b), do: a <> " " <> b
end
