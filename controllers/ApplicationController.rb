require 'sinatra'

class ApplicationController < Sinatra::Base
    configure do 
        enable :sessions
        set :session_secret, "fakkayou"
    end

    set :views, File.expand_path('../../views', __FILE__)
    set :public_folder, File.expand_path('../../public', __FILE__)
    enable :sessions, :method_override

#    register Sinatra::Flash
end
