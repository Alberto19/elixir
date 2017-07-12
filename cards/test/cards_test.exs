defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "should return string hello" do 
    assert Cards.hello == "Hello!"
  end

  test "should return Array" do
    assert Cards.create_deck === ["Ace", "Two", "Three"]
  end

  test "should check if value exist in enumerable" do
    deck = ["Ace", "Two", "Three"]
    assert Cards.contains?(deck, "Two") === true
  end

end
