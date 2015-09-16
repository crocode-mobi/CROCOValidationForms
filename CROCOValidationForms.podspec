
Pod::Spec.new do |s|
  s.name             = "CROCOValidationForms"
  s.version          = "1.0.0"
  s.summary          = "CROCOValidationForms is a Objective C category developed by CROCODE team to validate strings forms"

  s.description      = <<-DESC
  CROCOValidationForms is a Objective C category developed by CROCODE team to validate strings forms. We usually use this category with the uitextfield content.
                       DESC

  s.homepage         = "https://github.com/crocode-mobi/CROCOValidationForms"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "pb.ojeda" => "pb.ojeda@gmail.com", "robmarco" => "robmarco@gmail.com" }
  s.source           = { :git => "https://github.com/crocode-mobi/CROCOValidationForms.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/CrocodeMobile'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'CROCOValidationForms' => ['Pod/Assets/*.png']
  }

  s.frameworks = 'Foundation'

end
