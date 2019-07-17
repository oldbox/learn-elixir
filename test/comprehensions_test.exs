defmodule ComprehensionsTest do
  use ExUnit.Case
  import ExUnit.CaptureIO

  doctest Comprehensions.Basic

  test "outputs hello" do
    assert capture_io(fn -> IO.puts(Comprehensions.Basic.binaries_comprehension("hello")) end) == "hello\n"
  end
end
