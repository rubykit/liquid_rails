require 'rails'

class KitLiquidRails::Railtie < ::Rails::Railtie

  initializer "kit_liquid_rails.register_template_handler" do
    ActiveSupport.on_load(:action_view) do
      ActionView::Template.register_template_handler :liquid, KitLiquidRails::TemplateHandler
    end
  end

end
