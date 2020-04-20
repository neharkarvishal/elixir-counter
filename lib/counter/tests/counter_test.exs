defmodule CounterTest do
  use ExUnit.Case
  test "function `inc` increments given integer value" do
    assert Counter.Core.inc(2) == 3
  end
end
