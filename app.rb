require 'sinatra'
require 'pg' # to connect to our database
load './local_env.rb' if file.exist?('./local_env.rb')
enable :sessions

db_params = {
	host: ENV['dbhost'],
	port: ENV['port'],
	dbname: ENV['dbname'],
	user: ENV['dbuser'],
	password: ENV['password']
}

db = PG::Connection.new(db_params)

get '/' do # to homepage
	erb :home # going to load our homepage when it loads
end