require "sinatra"
require_relative 'isbnfunction.rb'
enable :session

get '/' do
    erb :index
    end
post '/number' do
    isbn_num = params[:number].to_s
    checker = isbn_checker(isbn_num)
    val = isbn_checker(isbn_num)
    erb :number, :locals=>{:val=>val,:isbn_num=>isbn_num,:checker=>checker}
    end