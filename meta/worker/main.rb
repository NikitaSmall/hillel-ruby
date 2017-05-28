require_relative './worker'
require_relative './command'

standard_command = Command.new

new_task = -> (params) { p 'this task is under dvelopment' }
standard_command.add_command('wrong_task', new_task)

worker = Worker.new(standard_command)
worker.listen
