defmodule Shop do
  defp standard(price), do: price
  defp bronze(price), do: price * 0.95
  defp silver(price), do: price * 0.9
  defp gold(price), do: price * 0.8

  def discount(:standard), do: price_calc = &standard/1
  def discount(:bronze), do: price_calc = &bronze/1
  def discount(:silver), do: price_calc = &silver/1
  def discount(:gold), do: price_calc = &gold/1
end
