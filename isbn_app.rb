require "sinatra"
require_relative 'isbnfunction.rb'


get '/' do
    erb :index
    end
post'/results' do
    isbn_num = params[:number].to_s
    end
post '/number' do
    isbn_num = params[:isbn_num].to_s
    checker = isbn_val(isbn_num)
    val = isbn_val(isbn_num)
    erb :number, :locals=>{:val=>val,:isbn_num=>isbn_num,:checker=>checker}
    end