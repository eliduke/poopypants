require "poopypants/version"

module Poopypants
  class Name
    FIRSTS  = {"A" => "Stinky", "B" => "Lumpy", "C" => "Buttercup", "D" => "Gidget", "E" => "Crusty", "F" => "Greasy", "G" => "Fluffy", "H" => "Cheeseball", "I" => "Chim-Chim", "J" => "Poopsie", "K" => "Flunky", "L" => "Booger", "M" => "Pinky", "N" => "Zippy", "O" => "Goober", "P" => "Doofus", "Q" => "Slimy", "R" => "Loopy", "S" => "Snotty", "T" => "Falafel", "U" => "Dorky", "V" => "Squeezit", "W" => "Oprah", "X" => "Skipper", "Y" => "Dinky", "Z" => "Zsa-Zsa"}.freeze
    MIDDLES = {"A" => "Diaper", "B" => "Toilet", "C" => "Giggle", "D" => "Bubble", "E" => "Girdle", "F" => "Barf", "G" => "Lizard", "H" => "Waffle", "I" => "Cootie", "J" => "Monkey", "K" => "Potty", "L" => "Liver", "M" => "Banana", "N" => "Rhino", "O" => "Burger", "P" => "Hamster", "Q" => "Toad", "R" => "Gizzard", "S" => "Pizza", "T" => "Gerbil", "U" => "Chicken", "V" => "Pickle", "W" => "Chuckle", "X" => "Tofu", "Y" => "Gorilla", "Z" => "Stinker"}.freeze
    LASTS   = {"A" => "head", "B" => "mouth", "C" => "face", "D" => "nose", "E" => "tush", "F" => "breath", "G" => "pants", "H" => "shorts", "I" => "lips", "J" => "honker", "K" => "butt", "L" => "brain", "M" => "tushie", "N" => "chunks", "O" => "hiney", "P" => "biscuits", "Q" => "toes", "R" => "buns", "S" => "fanny", "T" => "sniffer", "U" => "sprinkles", "V" => "kisser", "W" => "squirt", "X" => "humperdinck", "Y" => "brains", "Z" => "juice"}.freeze

    attr_accessor :first, :last

    def initialize(first, last)
      @first = first.gsub(/\W+|\d+|_/, '')
      @last = last.gsub(/\W+|\d+|_/, '')
    end

    def change
      new_name unless @first.empty? || @last.empty?
    end

    private

    def new_first
      FIRSTS["#{@first[0].upcase}"]
    end

    def new_middle
      MIDDLES["#{@last[0].upcase}"]
    end

    def new_last
      LASTS["#{@last[-1].upcase}"]
    end

    def new_name
      "#{new_first} #{new_middle}#{new_last}"
    end
  end
end
