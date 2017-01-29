defmodule MyList do

  def sum(list), do: _sum(list, 0)

  def my_sum([]), do: 0
  def my_sum([ head | tail ]), do: head + my_sum(tail)

  defp _sum([], total), do: total
  defp _sum([ head | tail ], total), do: _sum(tail, head + total)
end

IO.puts MyList.sum([2,3,4,5,6,7,8,9])
IO.puts MyList.my_sum([2,3,4,5,6,7,8,9])
