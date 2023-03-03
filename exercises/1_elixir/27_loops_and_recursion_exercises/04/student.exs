defmodule Exercise do
  def range(_, 2), do: [1]
  def range(a, b), do: [range(a, b - 1), b - 1]
  # def range(a,b),do:
end
