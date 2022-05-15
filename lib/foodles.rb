# frozen_string_literal: true

require_relative "foodles/version"

module Foodles
  class Error < StandardError
  end

  class SentenceIsNilError < StandardError
  end

  class NIsNegativeError < StandardError
  end

  class TechnicalTest
    WORD_REGEXP = /[a-zA-Z]+/

    def sorted_frequencies_and_word(sentence, n)
      raise SentenceIsNilError unless sentence
      raise NIsNegativeError unless n >= 0
      return [] if n.zero?

      frequencies_by_word = sentence.scan(WORD_REGEXP).group_by(&:itself).transform_values!(&:size)
      sorted_frequencies_by_word = frequencies_by_word.sort do |first, second|
        [second[1], first[0]] <=> [first[1], second[0]]
      end
      sorted_frequencies_by_word.first(n)
    end
  end
end
