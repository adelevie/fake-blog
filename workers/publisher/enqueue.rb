require 'iron_worker_ng'
require_relative '../configuration'
 
config = Configuration.keys

p config.inspect
 
client = IronWorkerNG::Client.new(:token => config['ironio']['token'], :project_id => config['ironio']['project_id'])
 
code = IronWorkerNG::Code::Ruby.new
code.merge_worker 'main.rb'
#code.merge_file 'configuration.rb'
#code.merge_gem 'jekyll-s3'
 
client.codes.create(code)
 
url = "https://worker-aws-us-east-1.iron.io/2/projects/#{config['ironio']['project_id']}/tasks/webhook?code_name=#{code.name}&oauth=#{config['ironio']['token']}"
 
puts "Add this url to github Service Hooks, Post Receive URLs: "
puts url