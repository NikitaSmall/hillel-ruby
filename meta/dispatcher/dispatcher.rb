require 'json'
require 'socket'

class Dispatcher
  DEFAULT_TASKS = [
    { 'name' => 'time', 'params' => {} },
    { 'name' => 'stop', 'params' => {} },
    { 'name' => 'date', 'params' => {} },
    { 'name' => 'weather', 'params' => {} },
    { 'name' => 'location', 'params' => {} },
    { 'name' => 'sleep', 'params' => { 'time' => rand(10) } }
  ]

  def initialize
    @tasks = []
    @server = TCPServer.new(2000)
    initialize_standard_tasks
  end

  def dispatch
    loop do
      Thread.start(@server.accept) do |client|
        tasks_to_send = @tasks.sample(3)

        client.puts tasks_to_send.to_json
        client.close
      end
    end
  end

  private

  def initialize_standard_tasks
    @tasks += DEFAULT_TASKS
  end
end
