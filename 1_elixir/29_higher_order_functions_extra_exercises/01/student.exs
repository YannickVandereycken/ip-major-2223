defmodule Grades do
  def remove_na(grades),do: Enum.filter(grades,&na?/1)

  defp na?(:na),do: false
  defp na?(_),do: true #keep everything but na

end
