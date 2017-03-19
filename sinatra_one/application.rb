require_relative 'config/configuration'

class Application < Sinatra::Base
  use Controllers::Main
end
