require "uri"
require "net/http"
require "JSON"

url = URI("https://pokeapi.co/api/v2/pokemon/charizard/")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Get.new(url)

response = https.request(request)
datos = JSON.parse(response.read_body)

print datos

