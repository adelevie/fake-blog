#require 'cgi'

#cgi_parsed = CGI::parse(payload)
#p "cgi_parsed: #{cgi_parsed.inspect}"
 
#parsed = JSON.parse(cgi_parsed['payload'][0])
#p "parsed: #{parsed.inspect}"

p "#{JSON.parse(payload)}"