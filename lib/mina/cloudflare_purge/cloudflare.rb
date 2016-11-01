require 'net/http'
require 'json'

class CloudFlare
  BASE_URL = 'https://api.cloudflare.com/client/v4'
  attr_accessor :auth_email, :auth_key
  def initialize(auth_email:, auth_key:)
    @auth_email = auth_email
    @auth_key = auth_key
  end

  def purge_cache(zone)
    request_url = URI("#{BASE_URL}/zones/#{zone}/purge_cache")
    Net::HTTP.start request_url.host, request_url.port do |https|
      request = Net::HTTP::Delete.new request_url
      request['X-Auth-Email'] = auth_email
      request['X-Auth-Key'] = auth_key
      request.body = request_data.to_json
      https.request request
    end
  end

  private

  def request_data
    { purge_everything: true }
  end
end
