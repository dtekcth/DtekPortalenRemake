require 'sinatra/base'
require 'json'

class MainController < ApplicationController
    get '/' do
        erb :index
    end
end
