defmodule Cards do
  @moduledoc """
    Provide methods for creating and hanling a deck of cards
  """
  @doc "return string Hello"
  def hello do 
    "Hello!"
  end

  @doc "return a Deck"
  def create_deck do 
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"  
    end
  end
  # for value <- values do
  #   for suit <- suits do
  #     "#{value} of #{suit}"
  #   end
  # end

  @doc "Shuffle use the enum, your function shuffle is equal a Ramdom"
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @doc "Check if contains value in enumerable"
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  @doc """
    Split Array in `hand_size` position

    ##Examples
      iex> deck = Cards.create_deck
      iex> {hand, deck} = Cards.deal(deck, 1)
      iex> hand
        ["Ace of Spades"]
  """
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  @doc "Create a file"
  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  @doc "Read a file"
  def load(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term(binary)
      {:error, reason} -> "That file does not exist, #{reason}"
    end
  end

  # def load(filename) do
  #   {status, binary} = File.read(filename)
  #   case status do
  #     :ok -> :erlang.binary_to_term(binary)
  #     :error -> "That file does not exist"
  #   end
  # end
  # def load(filename) do
  #   {status, binary} = File.read(filename)
  #   :erlang.binary_to_term(binary)
  # end

  @doc "Create hand "
  def create_hand(hand_size) do
    Cards.create_deck
    |> Cards.shuffle
    |> Cards.deal(hand_size)
  end
  
  # def create_hand(hand_size) do
  #   deck = Cards.create_deck
  #   deck = Cards.shuffle(deck)
  #   hand = Cards.deal(deck, hand_size)
  # end

end
