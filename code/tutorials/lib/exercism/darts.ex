defmodule Darts do
  @type position :: {number, number}
  @doc
  """
  Calculate score of a single dart hitting a target
  """
  @spec score(position) :: integer()
  def score({x, y}) do
    distance = :math.sqrt(x*x + y*y)
    cond do
      dist <= 1 -> 10
      dist <= 5 -> 5
      dist <= 10 -> 1
      true -> 0

    end
  end
end
