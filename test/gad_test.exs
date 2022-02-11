defmodule GADTest do
  use ExUnit.Case
  doctest GAD

  test "greets the world" do
    assert GAD.hello() == :world
  end
end
