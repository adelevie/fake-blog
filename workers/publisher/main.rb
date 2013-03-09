require 'cgi'

cgi_parsed = CGI::parse(payload)
parsed = JSON.parse(cgi_parsed['payload'][0])

repo_name = parsed["repository"]["name"]
owner_name = parsed["repository"]["owner"]["name"]

clone_url = "git://github.com/#{owner_name}/#{repo_name}.git"

`git clone #{clone_url}`

Dir.chdir(repo_name)

p `ls`
