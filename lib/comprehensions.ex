defmodule Comprehensions.Basic do
  import Integer

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
    for x <- list, do: x * x
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

  @doc """
  同时推导多个列表

  ## Examples
      iex> Comprehensions.Basic.multi_comprehension([1,2,3], 4..6)
      [
        {1, 4},
        {1, 6},
        {2, 4},
        {2, 6},
        {3, 4},
        {3, 6}
      ]
  """
  @spec multi_comprehension(list(), list()) :: list()
  def multi_comprehension(list1, list2) do
    for n <- list1, times <- list2, is_even(times) do
      {n, times}
    end
  end

  @doc """
  同时推导多个列表, 并指定推导结果的类型

  ## Examples
      iex> Comprehensions.Basic.multi_comprehension([1,2,3], 4..6, %{})
      %{1 => 6, 2 => 6, 3 => 6}
  """
  @spec multi_comprehension(list, list, any) :: any
  def multi_comprehension(list1, list2, into) do
    for n <- list1, times <- list2, is_even(times), into: into do
      {n, times}
    end
  end

  @doc """
  sum

  ## Examples
      iex> Comprehensions.Basic.sum(1, 2)
      3
  """
  @spec sum(number, number) :: number
  def sum(a, b) do
    a + b
  end
end
