require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    the_name = params[:name].reverse
    "#{the_name}"
  end

  get "/square/:number" do
    num = params[:number].to_i
    num_sqr = num**2
    "#{num_sqr}"
  end

  get '/say/:number/:phrase' do
    how_many_times = params[:number].to_i
      "#{params[:phrase]}\n" * how_many_times
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    oprt = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if oprt == 'add'
      "#{num1 + num2}"
    elsif oprt == 'subtract'
      "#{num1 - num2}"
    elsif oprt == 'multiply'
      "#{num1 * num2}"
    elsif oprt == 'divide'
      "#{num1 / num2}"
    else
      "Please indicate operation"
    end
  end

end