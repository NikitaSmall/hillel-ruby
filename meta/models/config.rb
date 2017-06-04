require 'data_mapper'
require 'dm-sqlite-adapter'

require_relative './task'

DataMapper.setup(:default, "sqlite3:///#{File.expand_path(File.dirname(__FILE__))}/task.db")
DataMapper.finalize
DataMapper.auto_upgrade!

if Task.count.zero? # == 0
  Task.create(name: 'time', params: {}.to_json)
  Task.create(name: 'stop', params: {}.to_json)
  Task.create(name: 'date', params: {}.to_json)
  Task.create(name: 'weather', params: { 'city_name' => 'Odessa' }.to_json)
  Task.create(name: 'location', params: {}.to_json)
  Task.create(name: 'sleep', params: { 'time' => rand(10) }.to_json)
end
