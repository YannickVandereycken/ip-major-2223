defmodule Cards do
  #de meest specifieke gevallen zet je vanboven

  #card = {value, suit}, suit :atom
  def same_suit?({_value1,suit},{_value2,suit}), do: true
  def same_suit?({_value1,suit1},{_value2,suit2}), do: false
  #def same_suit?(_,_), do: false #als je alleen fixt de tuples kan invoeren kan je ook dit als oplossing hebben

end
