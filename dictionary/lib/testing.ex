defmodule Testing do
  def test([state|t], data) when state == 1, do: data
end
