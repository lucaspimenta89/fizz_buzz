defmodule FizzBuzz do
  @moduledoc """
  Documentation for `FizzBuzz`.
  """

  def answer(number) when is_number(number) do
    cond do
      by_three?(number) && by_five?(number) ->
        "FizzBuzz"
      by_three?(number) -> "Fizz"
      by_five?(number) -> "Buzz"
      true -> number
    end
  end

  defp by_three?(number) when is_number(number) do
    rem(number, 3) == 0
  end

  defp by_five?(number) when is_number(number) do
    rem(number, 5) == 0
  end

  def count(max_num) when is_number(max_num) do
    Enum.map(1..max_num, &answer/1)
  end

  def print(max_num) do
    max_num
    |> count()
    |> Enum.join(", ")
    |> IO.puts()
  end
end
