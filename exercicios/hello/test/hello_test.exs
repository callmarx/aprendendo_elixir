defmodule HelloTest do
  use ExUnit.Case
  doctest Hello

  test "empty Hello.greets()" do
    assert Hello.greets() == "Hello World"
  end

  test "single argument Hello.greets(arg1)" do
    assert Hello.greets("Eugenio") == "Hello Eugenio"
  end

  test "double argument Hello.greets(arg1, arg2)" do
    assert Hello.greets("Eugenio", "Nila") == "Hello Eugenio and Nila"
  end
end
