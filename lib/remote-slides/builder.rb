require 'erb'

module RemoteSlides
  class Builder
    def build!
      raise "Output file (#{output_file}) already exists. Aborting." if File.exists?(output_file)
      
      File.open(output_file, 'w') do |out|
        out.puts ERB.new(template).run(Model.new(images))
      end
      
      puts "Remote-slides site created: #{output_file}"
    end
    
    protected
    def template
      template_file = File.expand_path('../../../assets/template.html.erb', __FILE__)
      File.read(template_file)
    end
    
    def input_dir
      File.expand_path(ARGV.first || __FILE__)
    end
    
    def output_file
      File.expand_path('index.html', input_dir)
    end
    
    def images
      Dir.glob(File.expand_path('*.jpg', input_dir)).sort.map {|e| e.gsub(/^.*\//, '')}
    end    
  end
end