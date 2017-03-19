require_relative 'base'

module Controllers
  class Main < Controllers::Base

    get '/' do
      slim :index
    end

  end
end
