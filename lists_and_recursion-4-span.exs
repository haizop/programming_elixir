defmodule MyList do

  def span(from, to) when from == to, do: [ to ]
  def span(from, to), do: [ from  | span(from + 1, to) ]
  def span(from, to) when from > to, do: raise "invalid input"
end

IO.puts MyList.span(5, 10)
