require 'cgi'

cgi_parsed = CGI::parse(payload)
parsed = JSON.parse(cgi_parsed['payload'][0])

p parsed["repository"]["name"]
p parsed["repository"]["owner"]["name"]