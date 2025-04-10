require "icon_kit/engine"
require "icon_kit/version"

module IconKit
  # Global default config options
  mattr_accessor :default_size, default: "w-5 h-5"
  mattr_accessor :default_color, default: "currentColor"

  def self.configure
    yield self if block_given?
  end
end
