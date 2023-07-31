# Daily rate is 8 times the hourly rate
# 1 month = 22 billable days
# Discounts are modelled as percentages (e.g. 25% is 25.0)

# Task 1: Calculate the daily rate given an hourly rate
# Task 2: Calculate a discounted price
# Task 3: Calculate monthly rate, given an hourly rate and a discount
# Task 4: Calculate the number of workdays given a budget, hourly rate, discount

defmodule Freelancer do

  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    with_discount = before_discount * (discount / 100)
    before_discount - with_discount
  end

  defp daily_discounted_rate(hourly_rate, discount) do
    hourly_rate |> daily_rate |> apply_discount(discount)
  end

  def monthly_rate(hourly_rate, discount) do
    (daily_discounted_rate(hourly_rate, discount) * 22) |> ceil
  end

  def days_budgeted(budget, hourly_rate, discount) do
    (budget / daily_discounted_rate(hourly_rate, discount)) |> Float.floor(2)
  end

end
