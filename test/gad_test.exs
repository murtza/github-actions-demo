defmodule GADTest do
  use ExUnit.Case
  doctest GAD

  test "greets the world" do
    assert GAD.hello() == :world
  end

  test "test sum funcion" do
    assert GAD.sum(1, 2) == 3
  end

  test "test subtract funcion" do
    assert GAD.subtract(5, 2) == 3
  end

  test "test multiply funcion" do
    assert GAD.multiply(5, 2) == 10
  end

  test "test devide funcion" do
    assert GAD.devide(10, 2) == 5.0
  end
end
