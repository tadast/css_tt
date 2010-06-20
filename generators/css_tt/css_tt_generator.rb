class CssTtGenerator < Rails::Generator::Base
  
  def manifest
    record do |m|
      # css file
      m.file "css_tt.css", "public/stylesheets/css_tt.css"
      
      # images
      img_dir = "public/images/css_tt"
      m.directory img_dir
      
      # %(info warning critical help).each do |img|
      #   m.file "#{img}.txt", File.join(img_dir, "#{img}.txt")
      # end
      m.file "info.png", File.join(img_dir, "info.png")
      m.file "warning.png", File.join(img_dir, "warning.png")
      m.file "critical.png", File.join(img_dir, "critical.png")
      m.file "help.png", File.join(img_dir, "help.png")
      
    end
  end

end
