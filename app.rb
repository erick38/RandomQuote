require "sinatra"
require "sinatra/reloader"
require 'http'
require 'net/http'
require 'openssl'

# Helper function to fetch random quote
def fetch_random_quote
  uri = URI('https://api.quotable.io/random')
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE # Disable SSL verification (not recommended for production)
  response = http.get(uri.request_uri)
  data = JSON.parse(response.body)
  { quote: data['content'], author: data['author'] }
end

# Routes
get '/' do
  @quote_data = fetch_random_quote
  erb :index
end
