Pod::Spec.new do |s|
  s.name             = 'SimpleConstraints'
  s.version          = '0.2.0'
  s.summary          = 'SimpleConstraints makes it easier and more intuitive to create NSLayoutConstraints.'

  s.description      = <<-DESC
SimpleConstraints allows you to create NSLayoutConstraints using mathematical equations. This makes it a lot more intuitive to create layout constraints.
                       DESC

  s.homepage         = 'https://github.com/pauljohanneskraft/SimpleConstraints'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'pauljohanneskraft' => 'pauljohanneskraft@icloud.com' }
  s.source           = { :git => 'https://github.com/pauljohanneskraft/SimpleConstraints.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.2'
  s.source_files = 'SimpleConstraints/Classes/**/*'
  s.frameworks = 'UIKit'
end
