defmodule Person do
  defstruct [
    first_name: nil,
    surname: nil,
    birthday: nil,
    location: "home"
  ]

  def full_name(%Person{} = person) do
    "#{person.first_name} #{person.surname}"
  end

  def greeting(%Person{} = person) do
    "Hello #{person.first_name} #{person.surname}"
  end

  def age(%Person{} = person) do
    days = Date.diff(Date.utc_today, person.birthday)
    real_age = days / 365
    "#{person.first_name} #{person.surname} is #{real_age} today"
  end

  def home(%Person{} = person) do
    %{person | location: "home"}
  end

  def away(%Person{} = person) do
    %{person | location: "away"}
  end

end
