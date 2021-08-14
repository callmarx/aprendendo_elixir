defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """

  @base_latters %{
    1 => "I",
    5 => "V",
    10 => "X",
    50 => "L",
    100 => "C",
    500 => "D",
    1000 => "M"
  }
  @spec numeral(pos_integer) :: String.t()
  def numeral(number, recursive_opt \\ true) do
    if recursive_opt, do: recursive_solution(number), else: manual_solution(number)
  end

  defp recursive_solution(number) do
    cond do
      number >= 1000 -> "M" <> recursive_solution(number - 1000)
      number >= 900 -> "CM" <> recursive_solution(number - 900)
      number >= 500 -> "D" <> recursive_solution(number - 500)
      number >= 400 -> "CD" <> recursive_solution(number - 400)
      number >= 100 -> "C" <> recursive_solution(number - 100)
      number >= 90 -> "XC" <> recursive_solution(number - 90)
      number >= 50 -> "L" <> recursive_solution(number - 50)
      number >= 40 -> "XL" <> recursive_solution(number - 40)
      number >= 10 -> "X" <> recursive_solution(number - 10)
      number >= 9 -> "IX" <> recursive_solution(number - 9)
      number >= 5 -> "V" <> recursive_solution(number - 5)
      number >= 4 -> "IV" <> recursive_solution(number - 4)
      number >= 1 -> "I" <> recursive_solution(number - 1)
      true -> ""
    end
  end

  defp manual_solution(number) do
    list = Integer.digits(number)
    size = length(list)
    Enum.with_index(list)
    |> Enum.reduce("", fn {num, idx}, acc ->
      acc <> composed(num, Integer.pow(10, size - idx - 1))
    end)
  end

  defp composed(num, base) do
    cond do
      num <= 3 ->
        String.duplicate(@base_latters[base], num)
      num < 5 ->
        String.duplicate(@base_latters[base], 5 - num) <> @base_latters[5 * base]
      num == 5 ->
        @base_latters[5 * base]
      num < 9 ->
        @base_latters[5 * base] <> String.duplicate(@base_latters[base], num - 5)
      true -> # num == 9
         @base_latters[base] <> @base_latters[10 * base]
    end
  end
end
