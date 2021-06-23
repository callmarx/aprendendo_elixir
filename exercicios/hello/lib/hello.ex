defmodule Hello do
  @moduledoc """
  Provides functions `greets/0`, `greets/1` and `greets/2` for Hello
  """

  def greets(name), do: "Hello #{name}"
  def greets(name1, name2), do: "Hello #{name1} and #{name2}"
  def greets, do: "Hello World"
end
