#maps key => value
#hexdocs maps voor documentatie
# %{key => value, key => value}

map = %{"1" => "Casper","3" => "Yarne"}
#m=%{self()=>"ikke"}
#m=v()

IO.puts(Map.keys(map))

m=%{:a => 2}
%{:a => x}=m
IO.puts(x==2)

# f1(%{a: => x}=m) do
#   x==a
# end

# f2(%{b: => x}=m) do
#   x==b
# end

#open a system observer
:observer.start

defmodule Find do
  def keerom(lijst),do: keerom(lijst,[])
  defp keerom([],acc), do: acc
  defp keerom([h|l],acc), do: keerom(l,[h|acc])

  def count(lijst,zoek),
    do: count(lijst,zoek,0)
  defp count([],_,teller), do: teller
  defp count([h | l],h,teller), do: count(l,h,teller+1)
  defp count([h | l],t,teller), do: count(l,h,teller)

  def search([h | _l ],h) do: true
  def search([],_) do: false
  def search([_ | l ],t) do: search(l,t)
end
