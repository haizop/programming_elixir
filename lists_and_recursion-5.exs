defmodule MyList do
  def all?(list, func), do: false in _all?(list, func) == false
  defp _all?([ head | [] ], func), do: [ func.(head) == true ]
  defp _all?([ head | tail ], func), do: [ func.(head) == true | _all?(tail, func) ]
end
