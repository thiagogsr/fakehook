defmodule FakehookTest do
  use ExUnit.Case
  doctest Fakehook

  test "greets the world" do
    assert Fakehook.hello() == :world
  end
end
