defmodule Fibonacci do
  def fib(0), do: 0
  def fib(1), do: 1
  def fib(x), do: fib(x - 2) + fib(x - 1)
end
