class Media
  attr_reader :path
  attr_reader :type
  attr_reader :display_name
  
  def initialize(path)
    @path = path
    @type = self.class.type(path)
    @display_name = self.class.display_name(path)
  end
  
  def file?
    @its_file ||= (type == :file)
  end

  def folder?
    @its_folder ||= (type == :folder)
  end
  
  def parent
    @parent ||= load_parent
  end
  
  def load_parent
    path_array = path.split('/')
    path_array.pop
    parent_path = path_array.join('/')
    
    self.class.new(parent_path)
  end
  
  class << self
    def parent(path)
      parent = path.split('/').pop(2).first
      (parent.nil? || parent.empty?) ? nil : parent
    end
    
    def display_name(path)
      path.split('/').last
    end
    
    def type(path)
      File.directory?(path) ? :folder : :file
    end
  end
end