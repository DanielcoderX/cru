require "kemal"
require "./client"

host = Kemal.config.host_binding.to_s
obj = RedisClient.new(host)

get "/:url" do |env|
  url = env.params.url["url"]
  obj.getUrl(url)
end
get "/new/:url" do |env|
  url = env.params.url["url"]
  obj.setUrl(url)
end
Kemal.run
