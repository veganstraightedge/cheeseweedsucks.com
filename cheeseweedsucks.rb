require "rubygems"
require "sinatra"

get "/" do
  response['Cache-Control'] = "public, max-age=#{60 * 60}" unless development?
  File.read('public/index.html')
end
