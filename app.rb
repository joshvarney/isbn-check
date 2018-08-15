require 'sinatra'
require 'csv'
require 'json'
require_relative 'isbn_check.rb'

	get '/' do
		erb :isbn_page, locals:{isbn: "", isbn_csv: [""]}
	end
	post '/isbn_page' do
		isbn = params[:isbn]
		isbn = isbn_input(isbn)
		params[:isbn] = isbn
		erb :isbn_page, locals:{isbn: params[:isbn], isbn_csv: [""]}
	end
	post '/csv_file' do
		isbn_csv = params[:isbn_csv]
		isbn_csv = csv_input(isbn_csv)
		params[:isbn_csv] = isbn_csv
		erb :isbn_page, locals:{isbn: params[:isbn], isbn_csv: params[:isbn_csv]}
	end