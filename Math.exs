defmodule Math do
  def sum(a, b), do: a + b
  def zero?(0), do: true
  # Only matches when the parameter is an integer
  def zero?(x) when is_integer(x), do: false
  # Can be used as a fallback for all other types
  def zero?(_), do: false
end

IO.puts Math.sum(1, 2)
IO.puts Math.zero?(0)
IO.puts Math.zero?(1)
IO.puts Math.zero?([1, 2, 3])
IO.puts Math.zero?(0.0)
