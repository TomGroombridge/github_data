require "sinatra"
require "octokit"

Octokit.configure do |c|
	# client = Octokit::Client.new access_token: "83447db7c77a10ffd5319cf048be43d3c8dbc9bd"
	c.login = 'scorewars'
	c.password = 'makers69'
end

get "/" do 
	erb :index
end

post "/" do
	@user = Octokit.user params[:username]
	erb :info 
end
