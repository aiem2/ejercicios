require "uri"
require "net/http"
require "JSON"

def solicitud(data)

    url = URI(data)

    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true

    request = Net::HTTP::Get.new(url)
    response = https.request(request)
    JSON.parse(response.read_body)

end
data = solicitud('https://jsonplaceholder.typicode.com/photos')[0..10]
print solicitud(data)

photos = data.map{|x| x['url']}
html = ""
    photos.each do |photo|
        html += "<img src=\"#{photo}\">\n"
    end