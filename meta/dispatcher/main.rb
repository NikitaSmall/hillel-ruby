require_relative './dispatcher'
require_relative './task_storage'

server = Dispatcher.new(TaskStorage.new)
server.dispatch
