get '/show' do
  media_path = File.expand_path params["media_path"]
  media = Media.new(media_path)
  
  if media.file?
    show_media_file(media)
  elsif media.folder?
    show_media_folder(media)
  end
end

def show_media_file(media)
  erb :media, :locals => { :media => media }
end

def show_media_folder(media)
  media_folder = MediaFolder.new(media.path)
  erb :media_folder, :locals => { :media_folder => media_folder }
end
