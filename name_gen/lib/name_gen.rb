require 'name_gen/version'

require_relative './name_gen/rand_generator'
require_relative './name_gen/markov_generator'
require_relative './name_gen/generator'
require_relative './name_gen/config'

module NameGen
  class << self
    attr_reader :configuration

    def init(type = :markov)
      @configuration = NameGen::Config.new(type)
      @generator = NameGen::Generator.new
    end

    def get_name(elements = 3)
      @generator.get_name(elements)
    end

    def configure
      yield(configuration)
    end
  end
end
