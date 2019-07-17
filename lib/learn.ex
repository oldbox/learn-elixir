defmodule Learn do
  @moduledoc """
  Documentation for Learn.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Learn.hello()
      :world

  """
  def hello do
    :world
  end

  @doc """
  Hello world to `name`

  ## Examples

      iex> Learn.hello("谭佳松")
      "hello 谭佳松"

  """
  @spec hello(String.t()) :: String.t()
  def hello(name) do
    "hello #{name}"
  end
end
