defmodule Math do
  def sum(a, b), do: a + b
  def zero?(0), do: true
  # Only matches when the parameter is an integer
  def zero?(x) when is_integer(x), do: false
  # Can be used as a fallback for all other types
  def zero?(_), do: false

  def sum_list([head | tail], accumulator) do
    sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator) do
    accumulator
  end

  def double_with_map(list) do
    Enum.map(list, fn x -> x * 2 end)
  end
end

IO.puts Math.sum(1, 2)
IO.puts Math.zero?(0)
IO.puts Math.zero?(1)
IO.puts Math.zero?([1, 2, 3])
IO.puts Math.zero?(0.0)
IO.puts Math.sum_list [1, 2, 3], 0
IO.puts Math.double_with_map 1..3
