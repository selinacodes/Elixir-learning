defmodule KitchenCalculator do

  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter({:milliliter, volume}), do: {:milliliter, volume * 1}
  def to_milliliter({:milliliter, volume}), do: {:cup, volume * 240}
  def to_milliliter({:milliliter, volume}), do: {:fluid_ounce, volume * 30}
  def to_milliliter({:milliliter, volume}), do: {:teaspoon, volume * 5}
  def to_milliliter({:milliliter, volume}), do: {:tablespoon, volume * 15}

  def from_milliliter({:milliliter, volume}, :milliliter), do: {:milliliter, volume / 1}
  def from_milliliter({:milliliter, volume}, :cup), do: {:milliliter, volume / 240}
  def from_milliliter({:milliliter, volume}, :fluid_ounce), do: {:milliliter, volume / 30}
  def from_milliliter({:milliliter, volume}, :teaspoon), do: {:milliliter, volume / 5}
  def from_milliliter({:milliliter, volume}, :tablespoon), do: {:milliliter, volume / 15}

  def from_millimiter(volume_pair, unit) do
    {unit, get_volume(volume_pair)}
  end

  def convert(volume_pair, unit) do
    to_milliliter(volume_pair)
      |> from_milliliter(unit)
  end

end
