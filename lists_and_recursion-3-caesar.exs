defmodule MyList do

  def caesar([ head | [] ], n), do: _cypher(head, n)
  def caesar([ head | tail ], n), do: [ _cypher(head, n) | caesar(tail, n)]

  defp _cypher(char, n) when n > 26, do: _cypher(char, n - 26)
  defp _cypher(char, n), do: if (char + n > 122), do: (char + n - 122) + 96, else: char + n
end
