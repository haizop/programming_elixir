defmodule MyList do
  def all?(list, func), do: false in _all?(list, func) == false
  defp _all?([ h | [] ], func), do: [ func.(h) == true ]
  defp _all?([ h | t ], func), do: [ func.(h) == true | _all?(t, func) ]

  def each([ h | [] ], func), do: func.(h)
  def each([ h | t ], func), do: (func.(h); each(t, func))

  def filter([ h | [] ], func), do: if(func.(h) == true, do: h, else: [])
  def filter([ h | t ], func) do
    if func.(h) == true do
      [ h | filter(t, func) ]
    else
      [ filter(t, func) ]
    end
  end
end
