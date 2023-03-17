defmodule Util do
  #def size([]), do: 0
  def size(xs), do: Enum.reduce(xs, 0,fn _, acc -> acc + 1 end)
end

#&(&1+1) is the shorter version of this: fn _, acc -> acc + 1 end
