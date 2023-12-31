defmodule BitesTest do
  use ExUnit.Case
  doctest Bites

  test "greets the world" do
    assert Bites.hello() == :world
  end
end
