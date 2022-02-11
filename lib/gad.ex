defmodule GAD do
  @moduledoc """
  Documentation for `GAD`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> GAD.hello()
      :world

  """
  def hello do
    :world
  end

  @spec sum(number(), number()) :: number()
  @doc """

    iex> GAD.sum(1,2)
    iex> 3

    iex> GAD.sum(1,"")
    iex> "Please use numbers"

  """
  def sum(n1, n2)

  def sum(n1, n2) when not is_number(n1) or not is_number(n2) do
    "Please use numbers"
  end

  def sum(n1, n2) when is_number(n1) and is_number(n2) do
    n1 + n2
  end

  @spec subtract(number(), number()) :: number()
  @doc """

    iex> GAD.subtract(5,2)
    iex> 3

    iex> GAD.subtract(1,"")
    iex> "Please use numbers"

  """
  def subtract(n1, n2)

  def subtract(n1, n2) when not is_number(n1) or not is_number(n2) do
    "Please use numbers"
  end

  def subtract(n1, n2) when is_number(n1) and is_number(n2) do
    n1 - n2
  end

  @spec devide(number(), number()) :: number()
  @doc """

    iex> GAD.devide(10,2)
    iex> 5.0

    iex> GAD.devide(10,"")
    iex> "Please use numbers"

  """
  def devide(n1, n2)

  def devide(n1, n2) when not is_number(n1) or not is_number(n2) do
    "Please use numbers"
  end

  def devide(n1, n2) when is_number(n1) and is_number(n2) do
    n1 / n2
  end

end
