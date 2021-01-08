defmodule CardsTest do
  use ExUnit.Case
  doctest Cards
  @hand_size 2
  @test_deck ["a", "b", "c", "d"]

  test "test if it return true if card is in the desk" do
    assert Cards.contains?(@test_deck, "a") == true
  end

  test "test if it return false if card not in the desk" do
    assert Cards.contains?(@test_deck, "e") == false
  end

  test "test if it deal correct amount of cards" do
    {hand, _rest_of_deck} = Cards.deal(@test_deck, @hand_size)
    assert length(hand) == @hand_size
  end
end
