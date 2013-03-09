require 'cgi'

`apt-get install git`

puts payload.class
puts payload

p "cgi parsing:"

cgi_parsed = CGI::parse(payload)
p cgi_parsed.inspect

p "json parsing"

parsed = JSON.parse(cgi_parsed['payload'][0])
p "parsed: #{parsed.inspect}"