defmodule CardsSimulator do
  # Method that creates a deck of cards
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suites = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for value <- values, suite <- suites do
      "#{value} of #{suite}"
    end

  end

  # Module to shuffle deck
  def shuffle_deck(deck) do
    Enum.shuffle(deck)
  end
end
