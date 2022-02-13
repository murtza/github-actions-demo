defmodule GADTest do
  use ExUnit.Case
  doctest GAD

  test "greets the world" do
    assert GAD.hello() == :world
  end

  test "test sum funcion" do
    assert GAD.sum(1, 2) == {:ok, 3}
    assert GAD.sum(1, "2") == {:error, "Please use numbers"}
  end

  test "test sum funcion failure" do
    assert GAD.sum(1, "2") == {:error, "Please use numbers"}
  end

  test "test sum funcion failure min" do
    assert GAD.sum(1, 0) == {:error, "Number must be greater than 0"}
  end

  test "test subtract funcion" do
    assert GAD.subtract(5, 2) == {:ok, 3}
  end

  test "test subtract funcion failure" do
    assert GAD.subtract(5, "2") == {:error, "Please use numbers"}
  end

  test "test subtract funcion failure min" do
    assert GAD.subtract(5, 0) == {:error, "Number must be greater than 0"}
  end

  test "test multiply funcion" do
    assert GAD.multiply(5, 2) == {:ok, 10}
  end

  test "test multiply funcion failure" do
    assert GAD.multiply(5, "2") == {:error, "Please use numbers"}
  end

  test "test devide funcion" do
    assert GAD.devide(10, 2) == {:ok, 5.0}
  end

  test "test devide funcion failure" do
    assert GAD.devide(10, "2") == {:error, "Please use numbers"}
  end
end
