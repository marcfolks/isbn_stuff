require "sinatra"
require_relative 'isbnfunction.rb'
require "csv"


get '/' do
    erb :index
    end    
post '/number' do
    isbn_num = params[:isbn_num].to_s
    validate = checksum10(isbn_num)
    validate = checksum13(isbn_num)
    erb :number, :locals=>{:isbn_num=>isbn_num,:validate=>validate}
    end