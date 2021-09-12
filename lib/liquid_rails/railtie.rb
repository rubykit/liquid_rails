require 'rails'

class LiquidRails::Railtie < ::Rails::Railtie

  initializer "liquid_rails.register_template_handler" do
    ActiveSupport.on_load(:action_view) do
      ActionView::Template.register_template_handler :liquid, LiquidRails::TemplateHandler
    end
  end

end
