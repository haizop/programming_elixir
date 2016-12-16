fizzbuzz = fn
  (0, 0, _) -> "Fizz"
  (0, _, _) -> "Buzz"
  (_, 0, _) -> "FizzBuzz"
  (_, _, c) -> c
end
