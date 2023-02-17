defmodule MyModule do
  #Arity -> #argumenten
  #heeft arity van 1
  def my_function(message) do
    IO.puts(message)
  end
  def my_function() do #public function = def
    IO.puts("Hello")
    IO.puts "UCLL" #haakjes met functions oproepen is optioneel, ook met argumenten
  end

  def get_message() do
    a="Hello"
    b=1
    c=:ok #hattem, een constante (literal constants)
    "Hello" #return is overbodig, laatste lijn is return
  end
end

defmodule MyModule2 do
  alias MyModule, as: Mod
  def say_hello() do
    Mod.my_function()
  end
end

defmodule MyTuple do
  def my_function() do
    tuple = {"Hallo", 1, :Hallo}
    Kernel.elem(tuple,0) #toont element van tuple op bepaalde plaats
    #put_elem(tuple,2) #element toevoegen

    #pattern matching
    {tuple_val1, tuple_val2, _tuple_val3} = {"Hallo", 1, :Hallo} #ongebruikte waarde kan indiceren met _ of _name
    # ^tuple_val2=2 vorige gedefineerde waarde terugnemen en vastgezet
    tuple_val1
  end

  # def my_case() do
  #   case foo() do
  #     {:ok,_}-> IO.puts("gelukt")
  #     {:error,_}->IO.puts("Error")
  #   end
  # end

  #BETER
  def my_case(:ok,_) do
    IO.puts("gelukt")
  end
  def my_case(:error,_) do
    IO.puts("Error")
  end

  def foo(_), do: {:ok, "return_value"}
  def foo(:error), do: {:error,"return_value"}

end


MyModule.my_function()
MyModule2.say_hello #haakjes met functions oproepen is optioneel
IO.inspect(MyTuple.my_function)
