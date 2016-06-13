get_input = fn prompt ->
  IO.gets(prompt)
  |> String.strip
  |> String.to_integer
end

current_year = fn ->
  {{year,_,_}, _} = :calendar.local_time
  year
end

age_now  = get_input.("What is your current age? ")
age_then = get_input.("At what age would you like to retire? ")

years_more = age_then - age_now
year_now   = current_year.()
year_then  = year_now + years_more

IO.puts "It's #{year_now}, so you can retire in #{year_then}"
