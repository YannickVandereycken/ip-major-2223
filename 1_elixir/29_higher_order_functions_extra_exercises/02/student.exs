defmodule Util do
  def reduce([x | xs], init, f), do: reduce(xs, f(x, init), f)
  def reduce([], acc, _), do: acc
end
