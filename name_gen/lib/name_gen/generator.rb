module NameGen
  class Generator
    def initialize
      @markov_generator = NameGen::MarkovGenerator.new
      @rand_generator = NameGen::RandGenerator.new
    end

    def get_name(syllables)
      case NameGen::configuration.type
      when :markov
        @markov_generator.get_name(syllables)
      when :rand
        @rand_generator.get_name(syllables)
      end
    end

  end
end
