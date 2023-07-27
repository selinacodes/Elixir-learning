defmodule Tutorials.Recursion.PrintDigits do
  # This is the base case
  def upto(0), do: 0

  # Recursive function - Return Stage(Head Recursion)
  def upto(nums) do
    upto(nums - 1)
    IO.puts(nums)
  end
  # Recursive function - Ascending Stage (Tail Recursion)
  # def upto(nums) do
      #IO.puts(nums)
      #upto(nums - 1)
  # end
end
