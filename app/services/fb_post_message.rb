# Service object that allows the posting of a message to FB
class FbPostMessage
  def initialize
  end

  def process!(recipient: nil, msg: nil)
    rq    = build_request(recipient, msg)
    puts rq
    http  = http_cnx.request(rq)
    http.code
  end

  # private

  def base_url
    URI.parse('https://graph.facebook.com/v2.6/me/messages?')
  end

  def http_cnx
    uri = base_url
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    http
  end

  def build_request(recipient, msg)
    uri = base_url
    request = Net::HTTP::Post.new(
      uri.path,
      initheader = { 'Content-Type' =>'application/json' }
    )
    request.body = message_params(recipient, msg).to_json
    request
  end

  def message_params(recipient, msg)
    {
      recipient:  { id:   recipient },
      message:    { text: msg },
      access_token: ENV['FB_PAGE_TOKEN']
    }
  end
end
