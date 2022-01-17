require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name            = package['name']
  s.version         = package['version']
  s.summary         = package['description']
  s.license         = package['license']
  s.author          = package['author']
  s.homepage        = package['homepage']
  s.source          = { :git => package['respository']['url'], :tag => s.version }
  
  s.platform        = :ios, '8.0'
  
  s.preserve_paths  = 'index.js', 'package.json', 'README.md', 'LICENSE' 
  s.source_files    = 'ios/*.{h,m}'
  
  s.dependency 'React'
end
