require "poopypants/version"

module Poopypants
  class Name

    FIRSTS  = { "A" => "Stinky", "B" => "Lumpy", "C" => "Buttercup", "D" => "Gidget",
                "E" => "Crusty", "F" => "Greasy", "G" => "Fluffy", "H" => "Cheeseball",
                "I" => "Chim-Chim", "J" => "Poopsie", "K" => "Flunky", "L" => "Booger",
                "M" => "Pinky", "N" => "Zippy", "O" => "Goober", "P" => "Doofus",
                "Q" => "Slimy", "R" => "Loopy", "S" => "Snotty", "T" => "Falafel",
                "U" => "Dorky", "V" => "Squeezit", "W" => "Oprah", "X" => "Skipper",
                "Y" => "Dinky", "Z" => "Zsa-Zsa" }.freeze

    MIDDLES = { "A" => "Diaper", "B" => "Toilet", "C" => "Giggle", "D" => "Bubble",
                "E" => "Girdle", "F" => "Barf", "G" => "Lizard", "H" => "Waffle",
                "I" => "Cootie", "J" => "Monkey", "K" => "Potty", "L" => "Liver",
                "M" => "Banana", "N" => "Rhino", "O" => "Burger", "P" => "Hamster",
                "Q" => "Toad", "R" => "Gizzard", "S" => "Pizza", "T" => "Gerbil",
                "U" => "Chicken", "V" => "Pickle", "W" => "Chuckle", "X" => "Tofu",
                "Y" => "Gorilla", "Z" => "Stinker" }.freeze

    LASTS   = { "A" => "head", "B" => "mouth", "C" => "face", "D" => "nose",
                "E" => "tush", "F" => "breath", "G" => "pants", "H" => "shorts",
                "I" => "lips", "J" => "honker", "K" => "butt", "L" => "brain",
                "M" => "tushie", "N" => "chunks", "O" => "hiney", "P" => "biscuits",
                "Q" => "toes", "R" => "buns", "S" => "fanny", "T" => "sniffer",
                "U" => "sprinkles", "V" => "kisser", "W" => "squirt", "X" => "humperdinck",
                "Y" => "brains", "Z" => "juice" }.freeze

    REGEX = /\W+|\d+|_/.freeze

    attr_accessor :first, :last

    def initialize(first, last)
      @first = first.gsub(REGEX, '')
      @last = last.gsub(REGEX, '')
    end

    def poopify
      unless @first.empty? || @last.empty?
        pinch(FIRSTS, @first, 0) + " " + pinch(MIDDLES, @last, 0) + pinch(LASTS, @last, -1)
      end
    end

    private

    def pinch(names, name, intersection)
      names["#{name[intersection].upcase}"]
    end
  end
end
