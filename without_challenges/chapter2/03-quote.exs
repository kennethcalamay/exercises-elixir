the_quote  = IO.gets("What is the quote? ") |> String.strip
the_author = IO.gets("Who said it? ") |> String.strip

IO.puts the_author <> " says, \"" <> the_quote <> "\""
