require "uri"
require "net/http"

url = URI("https://jsonplaceholder.typicode.com/posts")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Post.new(url)

response = https.request(request)
puts response.read_body

ejemplo = {"id" => 101}
puts ejemplo
ejemplo ["info"] = "Subiendo cosas"
puts ejemplo
