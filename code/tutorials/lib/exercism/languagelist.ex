# Task 1: Define function to return empty language list.
# Task 2: Define function to add a language to the list.
# Task 3: Remove a language from the list.
# Task 4: Return the first item in the list.
# Task 5: Return last item in the list.
# Task 6: Return how many languages are in the list.
# Task 7: Determine if the list includes a functional language.

defmodule LanguageList do

  def new(), do: []

  def add_one(list, language), do: [language | list]

  def add_multiple(list, lang1, lang2, lang3), do: [lang1, lang2, lang3 | list]

  def remove([_ | list ]), do: list

  def return_first([head | _]), do: head

  def count(list), do: length(list)

  def functional_language?(list), do: "Elixir" in list

end
