# Task 1: Define the function that takes two arguments (if Pac-Man has a power pellet active and if Pac-Man is touching a ghost) and returns a boolean value if Pac-Man is able to eat the ghost. The function should return true only if Pac-Man has a power pellet active and is touching a ghost.

# Task 2: Define the function that takes two arguments (if Pac-Man is touching a power pellet and if Pac-Man is touching a dot) and returns a boolean value if Pac-Man scored. The function should return true if Pac-Man is touching a power pellet or a dot.

# Task 3: Define the function that takes two arguments (if Pac-Man has a power pellet active and if Pac-Man is touching a ghost) and returns a boolean value if Pac-Man loses. The function should return true if Pac-Man is touching a ghost and does not have a power pellet active.

# Task 4: Define the function that takes three arguments (if Pac-Man has eaten all of the dots, if Pac-Man has a power pellet active, and if Pac-Man is touching a ghost) and returns a boolean value if Pac-Man wins. The function should return true if Pac-Man has eaten all of the dots and has not lost based on the arguments defined in part 3.


defmodule Rules do

  def eat_ghost?(power_pellet_active?, touching_ghost?) do
    power_pellet_active? and touching_ghost?
  end

  def score?(touching_power_pellet?, touching_dot?) do
    touching_power_pellet? or touching_dot?
  end

  def lose?(power_pellet_active?, touching_ghost?) do
    not power_pellet_active? and touching_ghost?
  end

  def win?(has_eaten_all_dots?, power_pellet_active?, touching_ghost?) do
    has_eaten_all_dots? and not lose?(power_pellet_active?, touching_ghost?)
  end
end
