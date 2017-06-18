require "name_gen/version"

require_relative './name_gen/rand_generator'
require_relative './name_gen/markov_generator'
require_relative './name_gen/generator'

module NameGen
  class << self
    def init(type = :markov)
      @generator = Generator.new(type)
    end

    def get_name(elements = 3)
      @generator.get_name(elements)
    end
  end
end
