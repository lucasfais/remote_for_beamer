require "bundler"

# ENV["RACK_ENV"] ||= "development"
Bundler.setup(:default, :local)
Bundler.require

files = Dir[File.expand_path("../../app/**/*.rb", __FILE__)].sort

files.each do |file|
  require file
end

set :views, File.expand_path("../../app/views", __FILE__)
set :public_folder, File.expand_path("../../public", __FILE__)
