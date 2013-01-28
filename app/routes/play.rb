get "/play" do
  media_path = File.expand_path params["media_path"]
  media = Media.new(media_path)

  system("killall Beamer; open '#{media.path}' -g -a Beamer")
  erb :media_playing, :locals => { :media => media }
end
