require 'sinatra/base'

module Controllers
  class Base < Sinatra::Base
    configure do
      set :views, File.join(File.dirname(__FILE__), '..', 'views')
    end
  end
end
