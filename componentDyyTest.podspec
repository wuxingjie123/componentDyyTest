#
# Be sure to run `pod lib lint componentDyyTest.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'componentDyyTest'
  s.version          = '1.0.0'
  s.summary          = 'is a test componentDyyTest.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                       is a test componentDyyTest. is my test.
                       DESC

  s.homepage         = 'https://github.com/wuxingjie123/componentDyyTest'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dongyangyang' => '1013568981@qq.com' }
  s.source           = { :git => 'https://github.com/wuxingjie123/componentDyyTest.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'componentDyyTest/Classes/**/*'
  
  # s.resource_bundles = {
  #   'componentDyyTest' => ['componentDyyTest/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
