require "sinatra"
require_relative 'isbnfunction.rb'
require "csv"
require_relative 'bucket.rb'
require "aws-sdk"
load "./local_env.rb" if File.exists?('./local_env.rb')

get '/' do
    erb :index
    end    
post '/number' do
    isbn_num = params[:isbn_num].to_s
    validate = validate(isbn_num).to_s
    validate = isbn_val(isbn_num)
    erb :number, :locals=>{:isbn_num=>isbn_num,:validate=>validate}
    end