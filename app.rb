require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    @reverse_name
  end 

  get '/square/:number' do
    @square_number = params[:number].to_i ** 2
    @square_number.to_s
  end

  get '/say/:number/:phrase' do
    answer = ''
    params[:number].to_i.times do
      answer += params[:phrase]
    end
     answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @operation == "add"
      (@num1 + @num2).to_s
    elsif @operation == "subtract"
      (@num1 - @num2).to_s
    elsif @operation == "multiply"
      (@num1 * @num2).to_s
    elsif @operation == "divide"
      (@num1 / @num2).to_s
    else
      "Please enter a valid operation"
    end

  end

end