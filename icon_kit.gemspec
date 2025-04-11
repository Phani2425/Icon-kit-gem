Gem::Specification.new do |spec|
  spec.name          = 'icon_kit'
  spec.version       = '0.1.3'
  spec.authors       = ['Phani Bhusan Mohanty']
  spec.email         = ['mohantyphanibhusan@gmail.com']

  spec.summary     = 'Rails engine for SVG icons with built-in customization options.'
  spec.description = 'IconKit is a Rails engine offering over 40 ready-to-use SVG icons. Enjoy easy integration and customization of size, color, and styles directly in your views.'
  spec.homepage      = 'https://github.com/gajendrajena/Icon-kit-gem'
  spec.license       = 'MIT'

  spec.files         = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.required_ruby_version = ">= 3.0.0"
  spec.add_dependency "rails", ">= 6.0.0", "< 9.0"
end
