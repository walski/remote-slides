module RemoteSlides
  class Model
    def initialize(images)
      @images = images
    end
    
    def get_binding
      binding
    end
  end
end