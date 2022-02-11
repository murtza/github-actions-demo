defmodule GAD do
  @moduledoc """
  Documentation for `GAD`.
  """

  @err_msg "Please use numbers"
  @doc """
  Hello world.

  ## Examples

      iex> GAD.hello()
      :world

  """
  def hello do
    :world
  end

  @spec sum(number(), number()) ::
          {:ok, number()}
          | {:error, binary()}
  @doc """

    iex> GAD.sum(1,2)
    iex> {:ok, 3}

    iex> GAD.sum(1,"")
    iex> {:error, "Please use numbers"}

  """
  def sum(n1, n2) do
    with {:ok, n1} <- validate(n1),
         {:ok, n2} <- validate(n2) do
      {:ok, n1 + n2}
    else
      {:error, error} ->
        {:error, error}
    end
  end

  @spec subtract(number(), number()) ::
          {:ok, number()}
          | {:error, binary()}
  @doc """

    iex> GAD.subtract(5,2)
    iex> {:ok, 3}

    iex> GAD.subtract(1,"")
    iex> {:error, "Please use numbers"}

  """
  def subtract(n1, n2) do
    with {:ok, n1} <- validate(n1),
         {:ok, n2} <- validate(n2) do
      {:ok, n1 - n2}
    else
      {:error, error} ->
        {:error, error}
    end
  end

  @spec devide(number(), number()) ::
          {:ok, number()}
          | {:error, binary()}
  @doc """

    iex> GAD.devide(10,2)
    iex> {:ok, 5.0}

    iex> GAD.devide(10,"")
    iex> {:error, "Please use numbers"}

  """
  def devide(n1, n2) do
    with {:ok, n1} <- validate(n1),
         {:ok, n2} <- validate(n2) do
      {:ok, n1 / n2}
    else
      {:error, error} ->
        {:error, error}
    end
  end

  @spec multiply(number(), number()) ::
          {:ok, number()}
          | {:error, binary()}
  @doc """

    iex> GAD.multiply(5,2)
    iex> {:ok, 10}

    iex> GAD.multiply(1,"")
    iex> {:error, "Please use numbers"}

  """
  def multiply(n1, n2) do
    with {:ok, n1} <- validate(n1),
         {:ok, n2} <- validate(n2) do
      {:ok, n1 * n2}
    else
      {:error, error} ->
        {:error, error}
    end
  end

  # Private Functions
  defp validate(n) do
    if is_number(n) do
      {:ok, n}
    else
      {:error, @err_msg}
    end
  end
end
