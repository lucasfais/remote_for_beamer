class MediaFolder
  attr_reader :path
  attr_reader :medias
  attr_reader :display_name
  attr_reader :parent

  def initialize(path)
    @path = path
    @medias = load_medias(path)
    @display_name = self.class.display_name(path)
    @parent = self.class.parent(path)
  end

  private
  def load_medias(path)
    medias_paths(path).map do |path|
      Media.new(path)
    end
  end

  def medias_paths(path)
    Dir["#{path}/*/"].sort +
    Dir["#{path}/*{.mkv,.avi,.mp4}"].sort
  end

  class << self
    def display_name(path)
      path.split('/').last
    end

    def parent(path)
      parent = path.split('/').pop(2).first
      (parent.nil? || parent.empty?) ? nil : parent
    end
  end

end
