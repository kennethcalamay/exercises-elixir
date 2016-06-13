ask_for_input = fn prompt ->
  IO.gets(prompt) |> String.strip |> String.to_integer
end

num1 = ask_for_input.("What is the first number? ")
num2 = ask_for_input.("What is the second number? ")

IO.puts("#{num1} + #{num2} = #{num1 + num2}")
IO.puts("#{num1} - #{num2} = #{num1 - num2}")
IO.puts("#{num1} * #{num2} = #{num1 * num2}")
IO.puts("#{num1} / #{num2} = #{div(num1, num2)}")
