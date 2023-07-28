defmodule Lasagna do

  def expected_minutes_in_oven(), do: 40

  def remaining_minutes_in_oven(actual_minutes) do
   Lasagna.expected_minutes_in_oven - actual_minutes
  end

  def prep_time_in_minutes(number_of_layers) do
    number_of_layers * 2
  end

  def total_time_in_minutes(number_of_layers, actual_minutes) do
    Lasagna.prep_time_in_minutes(number_of_layers) + actual_minutes
  end

  def alarm(), do: "Ding!"

end
