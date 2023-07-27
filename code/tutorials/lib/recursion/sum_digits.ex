defmodule Tutorials.Recursion.SumDigits do
  # Base case
  def upto(0), do: 0

  # Recursive case
  def upto(num) do
    upto_tail_rec(num)
  end

  # Base tail recursive
  def upto_tail_rec(num, acc \\ 0)
  def upto_tail_rec(0, acc), do: acc

  def upto_tail_rec(num, acc) do
    upto_tail_rec(num - 1, acc + num)
  end
end
