question = fn (question) ->
    IO.gets("#{question}") |> String.trim
end

cups_flour = question.("How many pancakes would you like? ")
tbsp_sugar = question.("On a scale of 1 (no sugar) to 5 (lots of sugar), how sweet do you want your pancakes? ")
milk_ml = question.("How much cow gala (in ml) could you get in one sitting? ")
egg_count = question.("How many baby chickens would you like to sacrifice? ")
tsp_salt = question.("How much salt would you like in teaspoon? ")


IO.puts "Here is your very own customised funky pancakes recipe. Based on your input, please follow these steps:

1. Sift #{cups_flour} cups of flour into a bowl.
2. Add #{tbsp_sugar} tbsp sugar to the same bowl.
3. Kidnap #{egg_count} chicken eggs and scramble them separately, then add it your bowl.
4. Don't forget to add #{tsp_salt} tsp of salt and #{milk_ml} ml of cow gala.
5. Combine all your ingredients into a thick wet paste.
6. Heat a buttered pan and pour some batter to the size of your liking.
7. Flip when you see little bubbles appear on your pancake surface.
8. Serve hot with yummy fruits! I hope your recipe isn't as atrocious as it sounds."
