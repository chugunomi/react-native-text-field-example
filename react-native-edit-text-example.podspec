require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-edit-text-example"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-edit-text-example
                   DESC
  s.homepage     = "https://github.com/MikeChugunov/react-native-edit-text-example"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Mike Chugunov" => "mihail.chugunov@simbirsoft.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/MikeChugunov/react-native-edit-text-example.git", :tag => "#{s.version}" }
  s.swift_version = "4.2"

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  
	
  # s.dependency "..."
end

