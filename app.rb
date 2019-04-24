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
  
  get '/say/:number/:phrase' do
    binding.pry
    params[:number].to_i.times do
      params[:phrase]
    end
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5'
    params[:word1] + params[:word2] + params[:word3] + params[:word4] + params[:word5]
  end

end