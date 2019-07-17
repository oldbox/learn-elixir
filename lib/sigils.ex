defmodule MySigils do
  @doc """
  transfer `string` to upcase, equal to `String.upcase/2`

  ## Examples
      iex> ~u/elixir school/
      "ELIXIR SCHOOL"
  """
  @spec sigil_u(String.t(), []) :: String.t()
  def sigil_u(string, []) do
    String.upcase(string)
  end
end
