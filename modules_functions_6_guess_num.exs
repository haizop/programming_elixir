defmodule GuessNum do
  def guess(actual, bottom..top) do
    guess_num = div(top - bottom, 2) + bottom
    IO.puts("Is it #{guess_num}?")
    check(actual, guess_num, bottom, top)
  end

  def check(actual, guess_num, _bottom, _top) when actual == guess_num do
    IO.puts("Yes, it is #{actual}.")
  end

  def check(actual, guess_num, bottom, _top) when guess_num > actual do
    guess(actual, bottom..guess_num - 1)
  end

  def check(actual, guess_num, _bottom, top) when guess_num < actual do
    guess(actual, guess_num + 1..top)
  end
end

GuessNum.guess(13, 7..150)
