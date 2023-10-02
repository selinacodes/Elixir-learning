%{
    "Monday" => 28,
    "Tuesday" => 25,
    "Wednesday" => 29, 
    "Thursday" => 27,
    "Friday" => 24, 
    "Saturday" => 23,
    "Sunday" => 22
}

|> Enum.map(fn ({day, temp}) -> {day, temp * 1.8 + 32} end)
|> Enum.into(%{})
|> IO.inspect 