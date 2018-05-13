require "bussiness_data/version"
require "json"

module BussinessData
  def self.get_bussiness_data(file_path)
  	if file_path
  		begin
  			bussiness_file = File.read(file_path)
  			data = JSON.parse(bussiness_file)
	  		phone_no = data["data"]["attributes"]["contact-number"]
	  		email = data["data"]["attributes"]["email-address"]
	  		full_name = get_full_name(data["data"]["attributes"]["title"],data["data"]["attributes"]["first-name"],data["data"]["attributes"]["last-name"])
	  		product_name = ""
	  		data["included"].each do |in_service|
	  			if in_service["type"] == "products"
	  				product_name = in_service["attributes"]["name"]
	  			end
	  		end
	  		puts "--Customer Data--"
	  		puts "Name: #{full_name}"
	  		puts "Email ID: #{email}"
	  		puts "Phone_no: #{phone_no}"
	  		puts "Product Name: #{product_name}"
	  	rescue Exception => e
	  		puts "Error: Provide a valid file path with json file format. \nExample path: c:/collection.json"
	  	end
  	end
  end

  def self.get_full_name(title="",first_name="",last_name="")
  	"#{title}. #{first_name} #{last_name}"
  end
end
