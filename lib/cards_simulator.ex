defmodule CardsSimulator do
  # Method that creates a deck of cards
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suites = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for value <- values, suite <- suites do
      "#{value} of #{suite}"
    end

  end

  # Method to shuffle deck
  def shuffle_deck(deck) do
    Enum.shuffle(deck)
  end

  # Method to check whether the deck contains a specific card
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  # Method to create a hand
  def create_hand(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  # Method to save file to local storage
  def save_file(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  # Method to load file
  def load_file(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term(binary)
      {:error, _reason} -> "File does not exist"

    end
  end
end
