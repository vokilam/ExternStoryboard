Pod::Spec.new do |s|
  s.name         = "ExternStoryboard"
  s.version      = "0.0.1"
  s.summary      = "Clean way to link view controllers with segues between multiple storyboards"
  
  s.description  = "Split your View Controller logic into multiple reusable Storyboards, seguing between them effortlessly with no additional code and no subclassing!"

  s.homepage     = "https://github.com/nobre84/ExternStoryboard"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author             = { "Paul Malikov" => "email@address.com" }

  s.social_media_url = "http://twitter.com/Paul Malikov"
  s.platform     = :ios, '5.0'

  s.source       = { :git => "https://github.com/nobre84/ExternStoryboard.git", :tag => s.version.to_s }

  s.source_files = 'ExternStoryboard/UI*.{h,m}', 'ExternStoryboard/Extern*.{h,m}'
  s.requires_arc = true

  s.dependency 'ObjcAssociatedObjectHelpers', '~> 1.2.0'
  s.dependency 'JRSwizzle', '~> 1.0'

end
