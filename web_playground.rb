require 'socket'

server = TCPServer.new(2000)
loop do
  client = server.accept
  client.puts "Hello"
  client.puts "The time is #{Time.now}"
  client.close
end