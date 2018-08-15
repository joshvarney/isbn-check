require 'sinatra'
require 'csv'
require 'aws-sdk-s3'
require 'json'
require_relative 'isbn_check.rb'

load 'local_ENV.rb' if File.exist?('local_ENV.rb')

s3 = Aws::S3::Client.new(profile: 'joshcainvarney', region: 'us-east-2')

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
		unless isbn_csv[0] == "Please Upload File"
			updated_file = CSV.generate do |csv|
				isbn_csv.each do |stuff|
					csv << stuff
				end
			end
		end
		s3.put_object(bucket: 'isbn-bucket', body: updated_file, key: "updated_file.csv")
		erb :isbn_page, locals:{isbn: params[:isbn], isbn_csv: params[:isbn_csv]}
	end