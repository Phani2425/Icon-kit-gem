module IconKit
  class Engine < ::Rails::Engine
    isolate_namespace IconKit


    initializer "icon_kit.helpers" do
      ActiveSupport.on_load(:action_controller) do
        helper IconKit::IconsHelper
      end
    end
  end
end
