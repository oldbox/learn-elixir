defmodule Comprehensions.Basic do
  @moduledoc """
  Comprehensions basic
  """

  @doc """
  简单的列表推导

  ## Examples
      iex> Comprehensions.Basic.square_list([1,2,3,4,5])
      [1, 4, 9, 16, 25]
  """
  @spec square_list(list()) :: list()
  def square_list(list) do
    for x <- list, do: x*x
  end

  @doc """
  Keyword List

  ## Examples
      iex> Comprehensions.Basic.keyword_list([one: 1, two: 2, three: 3])
      [1, 2, 3]
  """
  @spec keyword_list(keyword()) :: list()
  def keyword_list(keyword) do
    for {_key, val} <- keyword do
      val
    end
  end

  @doc """
  Maps

  ## Examples
      iex> Comprehensions.Basic.maps_comprehension(%{"a" => "A", "b" => "B"})
      [{"a", "A"}, {"b", "B"}]
  """
  @spec maps_comprehension(map()) :: list()
  def maps_comprehension(map) do
    for {k, v} <- map do
      {k, v}
    end
  end


  @doc """
  Binaries

  ## Examples
      iex> Comprehensions.Basic.binaries_comprehension("hello")
      ["h", "e", "l", "l", "o"]
  """
  @spec binaries_comprehension(binary()) :: list()
  def binaries_comprehension(binary) do
    for <<v <- binary>> do
      <<v>>
    end
  end

end
