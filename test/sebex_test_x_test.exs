defmodule SebexTestXTest do
  use ExUnit.Case
  doctest SebexTestX

  test "greets the world" do
    assert SebexTestX.hello() == :world
  end
end
