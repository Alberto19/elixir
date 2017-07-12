defmodule Cards do
  
  @doc "Hello method"
  def hello do 
    "Hello!"
  end

  @doc "Array method"
  def create_deck do 
    ["Ace", "Two", "Three"]
  end

  @doc "Shuffle use the enum, your function shuffle is equal a Ramdom"
  def shuffle(deck) do
    Enum.shuffle(deck)
  end
end
