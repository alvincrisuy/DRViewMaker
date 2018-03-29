Pod::Spec.new do |s|
  s.name             = 'DRViewMaker'
  s.version          = '0.1.1'
  s.summary          = 'A tool for setting up UIView elements programatically with one line of code.'

  s.description      = <<-DESC
When you want to add UIView element into your project, you only need to declare it as variable or constant.
Example: let exampleLabel = DRViewMaker.makeLabel()
After that you only need to set up constraints and you're good to go.
                       DESC

  s.homepage         = 'https://github.com/DejanRibnikar/DRViewMaker/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Dejan Ribnikar' => 'dejanribnikar@gmail.com' }
  s.source           = { :git => 'https://github.com/DejanRibnikar/DRViewMaker.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.source_files = 'DRViewMaker/*.{swift,plist,h}'
  s.swift_version = '4.1'

end
