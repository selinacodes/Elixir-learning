name = IO.gets "Hello, what is your name? "
IO.puts "Hello #{String.trim(name)}. It is nice to meet you. I would like to create a short story using your input for the following questions."

years = IO.gets "Please choose a number between 1-4 digits long. "
place = IO.gets "Please write a city of your choice, anywhere in the world. "
animal1 = IO.gets "Write the name of an animal that lives in the ocean. "
animal2 = IO.gets "Now write the name of an animal that lives on land. "
stolen_object = IO.gets "Write the first object that comes to mind. "
insult1 = IO.gets "Write a short phrase you use when you are hungry. "
insult2 = IO.gets "Write a short phrase you use when you are happy. "
animal3 = IO.gets "What is an animal that you associate with royalty/regalness? "
insult3 = IO.gets "Write a short phrase you say to exude wisdom. "
world_event = IO.gets "Please choose an impactful historical global event. "


IO.inspect "#{String.trim(years)} years ago in the faraway kingdom of #{place |> String.trim() |> String.capitalize} lived two creatures - the #{String.trim(animal1)} named Beluga and #{String.trim(animal2)} named Peacock."
IO.inspect "They were not very fond of one another as #{String.trim(animal2)} had stolen the #{String.trim(stolen_object)} from #{String.trim(animal1)}. One day they crossed paths and began yelling at one another. Beluga screeched '#{insult1 |> String.trim() |> String.upcase()}' and Peacock squeaked back '#{insult2 |> String.trim() |> String.upcase()}'."
IO.inspect "The #{String.trim(animal3)} walking by heard this colourful exchange and interjected with '#{insult3 |> String.trim() |> String.upcase()}'. Beluga and Peacock, shocked, decided to part ways and continued with their lives until #{world_event |> String.trim() |> String.upcase()} happened."
