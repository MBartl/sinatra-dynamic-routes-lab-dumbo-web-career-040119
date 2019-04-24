require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end
  
  get '/square/:number' do
    @number = params[:number].to_i
    @output = @number ** 2
    @output.to_s
  end

end