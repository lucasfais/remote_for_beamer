DEFAULT_MEDIA_PATH = "~/Movies"

get "/" do
  redirect to(URI.escape("/show?media_path=#{DEFAULT_MEDIA_PATH}"))
end
