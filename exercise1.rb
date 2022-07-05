require 'socket'
server = TCPServer.new(2345)
loop {
puts "The server is running. Open a new terminal to make requests."
socket = server.accept
socket.puts "What do you say?"
they_said = socket.gets.chomp
socket.puts "You said: #{they_said}. Goodbye!"
socket.close
}
