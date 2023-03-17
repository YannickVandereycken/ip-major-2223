defmodule Exercise do
  def maximum([]), do: 0
  def maximum([n | ns]), do: maximum(ns, n)
  def maximum([n | ns], max) when n > max, do: maximum(ns, n)
  def maximum([n | ns], max) when n < max, do: maximum(ns, max)
  def maximum([], max), do: max
end
