require "name_gen/version"

require_relative './name_gen/generator'

module NameGen
  class << self
    def init
      @generator = Generator.new
    end

    def get_name(elements = 3)
      @generator.get_name(elements)
    end
  end
end
