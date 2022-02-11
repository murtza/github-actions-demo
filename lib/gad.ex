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

  @spec sum(number(), number()) ::
          {:ok, number()}
          | {:error, binary()}
  @doc """

    iex> GAD.sum(1,2)
    {:ok, 3}

    iex> GAD.sum(1,"")
    {:error, "Please use numbers"}

  """
  def sum(n1, n2) do
    with {:ok, n1} <- validate_number(n1),
         {:ok, n2} <- validate_number(n2),
         {:ok, n1} <- validate_min(n1),
         {:ok, n2} <- validate_min(n2),
         {:ok, n1} <- validate_max(n1),
         {:ok, n2} <- validate_max(n2) do
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
    {:ok, 3}

    iex> GAD.subtract(1,"")
    {:error, "Please use numbers"}

  """
  def subtract(n1, n2) do
    with {:ok, n1} <- validate_number(n1),
         {:ok, n2} <- validate_number(n2),
         {:ok, n1} <- validate_min(n1),
         {:ok, n2} <- validate_min(n2),
         {:ok, n1} <- validate_max(n1),
         {:ok, n2} <- validate_max(n2) do
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
    {:ok, 5.0}

    iex> GAD.devide(10,"")
    {:error, "Please use numbers"}

  """
  def devide(n1, n2) do
    with {:ok, n1} <- validate_number(n1),
         {:ok, n2} <- validate_number(n2),
         {:ok, n1} <- validate_min(n1),
         {:ok, n2} <- validate_min(n2),
         {:ok, n1} <- validate_max(n1),
         {:ok, n2} <- validate_max(n2) do
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
    {:ok, 10}

    iex> GAD.multiply(1,"")
    {:error, "Please use numbers"}

  """
  def multiply(n1, n2) do
    with {:ok, n1} <- validate_number(n1),
         {:ok, n2} <- validate_number(n2),
         {:ok, n1} <- validate_min(n1),
         {:ok, n2} <- validate_min(n2),
         {:ok, n1} <- validate_max(n1),
         {:ok, n2} <- validate_max(n2) do
      {:ok, n1 * n2}
    else
      {:error, error} ->
        {:error, error}
    end
  end

  # Private Functions
  defp validate_number(n) when is_number(n), do: {:ok, n}
  defp validate_number(_), do: {:error, "Please use numbers"}

  defp validate_min(n) when n > 0, do: {:ok, n}
  defp validate_min(_), do: {:error, "Number must be greater than 0"}

  defp validate_max(n) when n < 1000, do: {:ok, n}
  defp validate_max(_), do: {:error, "Number must be greater than 1000"}
end
