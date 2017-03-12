class Word
  attr_reader :visible_word, :secret_word

  def initialize
    @secret_word = Faker::StarWars.vehicle.downcase
    @visible_word = '_' * @secret_word.length
  end

  def char_exists?(char)
    indexes = find_indexes(char)

    update_visible_word(indexes, char)

    !indexes.empty?
  end

  def finished?
    !@visible_word.include?('_')
  end

  def update_visible_word(indexes, char)
    indexes.each do |index|
      @visible_word[index] = char
    end
  end

  def find_indexes(char)
    indexes = []

    @secret_word.split('').each_with_index do |symbol, index|
      indexes << index if symbol == char
    end

    indexes
  end
end
