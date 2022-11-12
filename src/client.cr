require "redis"
require "digest"

class RedisClient
    @domain : String
    def initialize(doom)
        @redis = Redis.new
        @domain = doom.to_s + "/"
    end
    def hashing(url)
        url =  @domain + url
        return Digest::Adler32.checksum(url)
    end
    def setUrl(url)
        hashed = hashing(url)
        @redis.set(hashed,url)
        return @domain + hashed.to_s
    end
    def getUrl(url)
        return @redis.get(url.delete(@domain))
    end
end