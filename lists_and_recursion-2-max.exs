defmodule MyList do

  def max([ head | tail ]), do: _max(head, tail)
  defp _max(current_max, []), do: current_max
  defp _max(current_max, [ head | tail ]) when head > current_max, do: _max(head, tail)
  defp _max(current_max, [ head | tail ]) when head < current_max, do: _max(current_max, tail)

  def max2([ head | tail ]), do: _max(head, tail)
  defp _max2(current_max, []), do: current_max
  defp _max2(current_max, [ head | tail ]), do: if (head > current_max), do: _max2(head, tail), else: _max2(current_max, tail)

# __________

  def max3([ head | [ thead | [] ] ]) when head > thead, do: head
  def max3([ head | [ thead | [] ] ]) when head < thead, do: thead
  def max3([ head | [ thead | ttail ] ]) when head > thead, do: max3([ head | ttail ])
  def max3([ head | [ thead | ttail ] ]) when head < thead, do: max3([ thead | ttail ])

  def max4([ head | [ thead | [] ] ]), do: if (head > thead), do: head, else: thead
  def max4([ head | [ thead | ttail ] ]), do: if (head > thead), do: max4([ head | ttail ]), else: max4([ thead | ttail ])
end
