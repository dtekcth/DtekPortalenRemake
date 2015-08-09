require 'rubygems'
require 'sinatra'
require 'data_mapper'

# We need to setup the appdata for the others to use
require './helpers/Appdata.rb'

Appdata.config do
	parameter :database
	parameter :hostname
	parameter :dbuser
	parameter :dbpass
	parameter :dbtype
end

require './configuration.rb'

# Setup datamapper
if Appdata.dbtype == "mysql"
	DataMapper.setup(:default, "mysql://#{Appdata.dbuser}:#{Appdata.dbpass}@#{Appdata.hostname}/#{Appdata.database}")
elsif Appdata.dbtype == "sqlite"
	DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/#{Appdata.database}")
else
	exit("You messed up the configuration ..?!")
end

# Require the correct files
require './controllers/ApplicationController.rb'
Dir.glob('./{helpers,models,controllers}/*.rb').each { | f | require f }

# Finalize datamapper
DataMapper.finalize

Navbar.RegisterDropdownItem("#", "Sektionen", [])
Navbar.RegisterItem("feed/styret.html", "Feed")
Navbar.RegisterItem("#", "Studier")
Navbar.RegisterItem("#", "Arbetsliv")
Navbar.RegisterItem("#", "Arrangemang")
Navbar.RegisterItem("#", "Företag")

# Include the routes
map ('/') { run MainController }
