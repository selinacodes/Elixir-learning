# Instructions
# Context: your system contains a few applications running many logs. You want to write a program that will aggregate these logs and give them labels according to their severity level. All applications in your system use the same log codes but some legacy applications don't support all the log codes.

# 1) Determine log label
# Log codes not specific, return an unknown label.
# Logs specified not support in legacy apps, also return an unknown label if the log came from a legacy app.

# 2) Function to determine who to send alerts to.
# error/fatal, alert ops.
# unknown from legacy system, alert dev1
# all other unknown labels, alert dev2

def module LogLevels do
  def to_label(level, legacy?) do
    cond do
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      legacy? == true -> :unknown
      level == 0 -> :trace
      level == 5 -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy) do
    levelType = to_label(level, legacy?)
    cond do
      level_type == :error -> :ops
      level_type == :fatal -> :ops
      level_type == :unknown && legacy? == true -> :dev1
      level_type == :unknown -> :dev2
      true -> false
    end
  end
end
