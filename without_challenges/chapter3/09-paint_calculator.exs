defmodule PaintCalculator do
  @conversion_rate (1/350)

  def gallons_to_cover(area) do
    Float.ceil(area * @conversion_rate)
  end
end

# utility functions
get_input = &(IO.gets(&1) |> String.strip |> String.to_integer)

float_to_integer = fn float ->
  [whole | _] = float |> Float.to_string |> String.split(".")
  whole
end

# input
length = get_input.("What's the length of your room in feet? ")
width  = get_input.("What's the width? ")

# process
area = length * width
num_gallons = PaintCalculator.gallons_to_cover(area)
num_gallons = float_to_integer.(num_gallons)

# output
IO.puts "You will need to purchase #{num_gallons} gallons of paint to cover #{area} square feet"
