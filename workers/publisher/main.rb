require 'cgi'

#cgi_parsed = CGI::parse(payload)
#p "cgi_parsed: #{cgi_parsed.inspect}"
 
#parsed = JSON.parse(cgi_parsed['payload'][0])
#p "parsed: #{parsed.inspect}"

#foooo


#cgi_parsed = CGI::parse(payload)
#push = JSON.parse(cgi_parsed)
#p push

puts payload.class
puts payload

p "cgi parsing:"

cgi_parsed = CGI::parse(payload)
p cgi_parsed.inspect

p "json parsing"

parsed = JSON.parse(cgi_parsed['payload'][0])
p "parsed: #{parsed.inspect}"