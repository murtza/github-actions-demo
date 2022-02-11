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

end
