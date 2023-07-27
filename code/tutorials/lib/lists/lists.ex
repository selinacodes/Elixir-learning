defmodule Tutorials.Lists do
  @moduledoc """
  Function Summary:
  1. sum
  """

  @doc """
  Returns sum of numbers inside a list.
  """

  @spec sum(list(number())) :: number()
  def sum(nums), do: sumTailRec(nums)

  @spec sumBase(list(number())) :: number()
  def sumBase([]), do: 0
  def sumBase([h | t]), do: h + sumBase(t)

  @spec sumTailRec(list(number()), integer()) :: number()
  def sumTailRec(nums, acc \\ 0)
  def sumTailRec([], acc), do: acc
  def sumTailRec([h | t], acc), do: sumTailRec(t, acc + h)

end
