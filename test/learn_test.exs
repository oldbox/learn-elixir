defmodule LearnTest do
  use ExUnit.Case
  doctest Learn

  test "greets to 谭佳松" do
    assert Learn.hello("谭佳松") == "hello 谭佳松"
  end

  test "greets to :world" do
    assert Learn.hello() == :world
  end
end
