require_relative '../base'

module Controllers
  module Admin
    class Base < Controllers::Base
      use Rack::Auth::Basic do |username, password|
        username == 'admin' && password == 'admin'
      end
    end
  end
end
