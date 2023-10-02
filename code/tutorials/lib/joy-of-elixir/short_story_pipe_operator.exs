question = fn (question) ->
    IO.gets("#{question}") |> String.trim
end

person = question.("Name a person. ")
animal = question.("Choose an animal. ")
country = question.("Pick a country. ")
number = question.("Choose a number between 1-3 digits long. ")

IO.puts "#{person} was on holiday in #{country} when suddenly, #{person}  noticed #{animal}. It suddenly spoke and asked for #{number} dollars."
