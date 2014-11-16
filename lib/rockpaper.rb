require 'sinatra/base'

class RockPaper < Sinatra::Base

	set :views, Proc.new{File.join(root,'..','views')}
  get '/' do
    # 'Hello RockPaper!'
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
