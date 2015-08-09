require 'sinatra/base'
require 'json'

class NavController < ApplicationController
    get '/get' do
        Navbar.GetItems().to_json
    end
end
