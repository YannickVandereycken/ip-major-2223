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

MyModule.my_function()
MyModule2.say_hello #haakjes met functions oproepen is optioneel
