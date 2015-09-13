# A very basic HTTP server
require "http/server"
require "./router"

def respond(message)
  HTTP::Response.ok "text/html", message
end

server = HTTP::Server.new(8080) do |request|
  # p "path: #{request.path}"
  # p "User-agent: #{request.headers["User-agent"]}"
  # p request
  Router.dispatch request.path
  # HTTP::Response.ok "text/plain", "Hello world!"
end

puts "Listening on http://0.0.0.0:8080"
server.listen
