Pod::Spec.new do |s|
  s.name = 'componentDyyTest'
  s.version = '1.1.1'
  s.summary = 'is a test componentDyyTest.'
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"dongyangyang"=>"1013568981@qq.com"}
  s.homepage = 'https://github.com/wuxingjie123/componentDyyTest'
  s.description = 'is a test componentDyyTest. is my test.'
  s.frameworks = ["Foundation", "PT"]
  s.source = { :path => '.' }

  s.ios.deployment_target    = '8.0'
  s.ios.preserve_paths       = 'ios/componentDyyTest.framework'
  s.ios.public_header_files  = 'ios/componentDyyTest.framework/Versions/A/Headers/*.h'
  s.ios.resource             = 'ios/componentDyyTest.framework/Versions/A/Resources/**/*'
  s.ios.vendored_frameworks  = 'ios/componentDyyTest.framework'
end
