
fizzbuzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, n -> n
end

IO.puts fizzbuzz.(0, 1, 2) # fizz
IO.puts fizzbuzz.(5, 0, 5) # buzz
IO.puts fizzbuzz.(0, 0, 5) # fizzbuzz
IO.puts fizzbuzz.(3, 4, 5) # 5
