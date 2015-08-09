require 'rubygems'
require 'sinatra'
require 'data_mapper'

# Setup the db
#DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/<db-file>.db")
#DataMapper.setup(:default, 'mysql://<user>:<pw>@localhost/<db>')

# Require the correct files
require './controllers/ApplicationController.rb'
Dir.glob('./{models,helpers,controllers}/*.rb').each { | f | require f }

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
