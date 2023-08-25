defmodule Exercism.Birdcount do

  def today([]), do: nil
  def today([head | tail]), do: head

  def increment_day_count([]), do: [1]
  def increment_day_count([head | tail]), do: head + 1

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([0 | tail]), do: true
  def has_day_without_birds?([_ | tail]), do: has_day_without_birds?(tail)

  def total([]), do: 0
  def total([head | tail]), do: head + total(tail)

  def busy_day([]), do: 0
  def busy_day([head | tail]) when head >= 5, do: busy_day(tail) + 1
  def busy_day([_ | tail]), do: busy_day(tail)

end
