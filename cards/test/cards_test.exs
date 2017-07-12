defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "should return string hello" do 
    assert Cards.hello == "Hello!"
  end

  test "should return Deck" do
    assert Cards.create_deck === ["Ace of Spades", "Two of Spades", "Three of Spades", "Four of Spades", "Five of Spades", "Ace of Clubs", "Two of Clubs", "Three of Clubs", "Four of Clubs", "Five of Clubs", "Ace of Hearts", "Two of Hearts", "Three of Hearts", "Four of Hearts", "Five of Hearts", "Ace of Diamonds", "Two of Diamonds", "Three of Diamonds", "Four of Diamonds", "Five of Diamonds"]
  end

  test "should check if value exist in enumerable" do
    deck = ["Ace", "Two", "Three"]
    assert Cards.contains?(deck, "Two") === true
  end

  test "should split an array" do
    deck = ["Ace", "Two", "Three"]
    assert Cards.deal(deck, 1) === {["Ace"], ["Two", "Three"]}
  end

  # test "should ramdomize a array" do
  #   deck = Cards.create_deck
  #   refute deck != Cards.shuffle(deck)
  # end

end
