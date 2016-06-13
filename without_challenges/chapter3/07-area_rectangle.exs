defmodule Conversion do
  @feet_to_meters 0.09290304

  def feet_to_meters(feet) do
    feet * @feet_to_meters
  end
end

get_input = &(IO.gets(&1) |> String.strip |> String.to_integer)

length = get_input.("What is the length of the room in feet? ")
width  = get_input.("What is the width of the room in feet? ")

area_feet   = length * width
area_meters = Conversion.feet_to_meters(area_feet)

IO.puts "You entered dimensions of #{length} feet by #{width} feet."
IO.puts "The area is"
IO.puts "#{area_feet} square feet"
IO.puts "#{area_meters} square meters"
