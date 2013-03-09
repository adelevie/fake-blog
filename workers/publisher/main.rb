require 'cgi'
require 'erb'

cgi_parsed = CGI::parse(payload)
parsed = JSON.parse(cgi_parsed['payload'][0])

repo_name = parsed["repository"]["name"]
owner_name = parsed["repository"]["owner"]["name"]

clone_url = "git://github.com/#{owner_name}/#{repo_name}.git"

`git clone #{clone_url}`

Dir.chdir(repo_name)

p `ls`


open('_jekyll-s3.yml', 'w') { |f|
  f << "s3_id: YOUR_AWS_S3_ACCESS_KEY_ID\n"
  f << "s3_secret: YOUR_AWS_S3_SECRET_ACCESS_KEY\n"
  f << "s3_bucket: your.blog.bucket.com\n"
}

p `cat _jekyll-s3.yml`
