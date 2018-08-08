require 'sinatra'
require_relative 'isbn_check.rb'

	get '/' do
		erb :isbn_page, locals:{isbn: ""}
	end
	post '/isbn_page' do
		isbn = params[:isbn]
		isbn = isbn_input(isbn)
		params[:isbn] = isbn
		erb :isbn_page, locals:{isbn: params[:isbn]}
	end