require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @heroes = params["team"]["hero"][]
      #params["team"].to_s
      #{}"Team Motto:" + params["team"].to_s
    end
end
