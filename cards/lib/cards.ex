defmodule Cards do
  
  @doc "return string Hello"
  def hello do 
    "Hello!"
  end

  @doc "return Array"
  def create_deck do 
    ["Ace", "Two", "Three", "Four", "Five"]
  end

  @doc "Shuffle use the enum, your function shuffle is equal a Ramdom"
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @doc "Check if contains value in enumerable"
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

end
