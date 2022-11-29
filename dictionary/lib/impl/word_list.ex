defmodule Dictionary.Impl.WordList do

  @type t :: list(String)

  @spec word_list() :: t
  def word_list do

    # # module attribute
    # @word_list "assets/words.txt"
    "assets/words.txt"
      |> File.read!
      |> String.split(~r/\n/, trim: true)

  end

  @spec random_word(t) :: String.t
  def random_word(word_list), do: Enum.random word_list

  def test({a,b}) do
    {b,a}
  end

  def test_match(a,b), do: false
  def test_match(a,a), do: true
end
