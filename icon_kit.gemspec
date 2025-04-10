Gem::Specification.new do |spec|
  spec.name          = 'icon_kit'
  spec.version       = '0.1.3'
  spec.authors       = ['Phani Bhusan Mohanty']
  spec.email         = ['mohantyphanibhusan@gmail.com']

  spec.summary       = 'A Rails engine for SVG icons'
  spec.description   = 'An extensive SVG icon system for Rails applications'
  spec.homepage      = 'https://github.com/Phani2425/icon_kit'
  spec.license       = 'MIT'

  spec.files         = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.required_ruby_version = ">= 3.0.0"
  spec.add_dependency "rails", ">= 6.0.0", "< 9.0"
end
