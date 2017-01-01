defmodule Mathness do
  def gcd(0, y), do: y
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x,y))
end
