defmodule FizzBuzzTest do
  use ExUnit.Case
  doctest FizzBuzz

  import ExUnit.CaptureIO

  test "return the number when it is indivisible by 3 or 5" do
    assert FizzBuzz.answer(1) == 1
    assert FizzBuzz.answer(2) == 2
    assert FizzBuzz.answer(11) == 11
  end

  test "return 'Fizz' when the number is divisible by 3" do
    assert FizzBuzz.answer(3) == "Fizz"
    assert FizzBuzz.answer(6) == "Fizz"
    assert FizzBuzz.answer(9) == "Fizz"
  end

  test "return 'Buzz' when the number is divisible by 5" do
    assert FizzBuzz.answer(5) == "Buzz"
    assert FizzBuzz.answer(10) == "Buzz"
  end

  test "return 'FizzBuzz' when the number is divisible by 3 and 5" do
    assert FizzBuzz.answer(15) == "FizzBuzz"
    assert FizzBuzz.answer(30) == "FizzBuzz"
    assert FizzBuzz.answer(60) == "FizzBuzz"
  end

  test "returns the counted numbers" do
    assert FizzBuzz.count(15) == [
      1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"
    ]
  end

  test "prints correctly" do
    wrapper = fn ->
      FizzBuzz.print(15)
    end

    assert capture_io(wrapper) =~ "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz"
  end
end
