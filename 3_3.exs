defmodule Demo do
  def sayHello(), do: IO.puts("Hello")
  def multiplyByTwo(x) when is_number(x), do: x*2


  # f -> function passed in
  # x argument for function f
  #double executor is a higher order function
  def double_executor(f,x), do: f.(f.(x))
end

#Function -> First Class Citizen
my_func = &Demo.sayHello/0
my_func.()

my_func_2 = &Demo.multiplyByTwo()/1
IO.puts(my_func_2.(2))


#16/2 29/1 (Enum.filter!) 29/2 29/3

#Guards class
IO.puts(Demo.multiplyByTwo(2))
IO.puts(Demo.multiplyByTwo("two"))


#oef: 24, 27/3, 27/4, 27/1, 27/8

#extra: 05, 06, 17, 18, 30/31
