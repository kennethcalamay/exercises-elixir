get_input = &(IO.gets(&1) |> String.strip |> String.to_integer)

people = get_input.("How many people? ")
pizzas = get_input.("How many pizzas do you have? ")
slices = get_input.("How many slices are there per pizza? ")

total_slices = slices * pizzas
distribution = div(total_slices, people)
left_over    = rem(total_slices, people)

IO.puts("#{people} people with #{pizzas} pizzas")
IO.puts("Each person gets #{distribution} pieces of pizza.")
IO.puts("There are #{left_over} leftover pieces")
