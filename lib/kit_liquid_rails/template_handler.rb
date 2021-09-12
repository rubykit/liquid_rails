class KitLiquidRails::TemplateHandler

  attr_reader :context

  # Note: local_assigns is not available in ViewComponents
  def self.call(template, source)
    source ||= template.source
    "::KitLiquidRails::TemplateHandler.new(self).render(#{ source.inspect }, (defined?(local_assigns) ? local_assigns : nil))"
  end

  def initialize(context)
    @context = context
  end

  def render(source, local_assigns = nil)
    local_assigns ||= {}

    # Use `liquid_assigns` method on the `ViewComponent` to determine what to forward to Liquid.
    if context.is_a?(::ViewComponent::Base) && context.respond_to?(:liquid_assigns)
      local_assigns = context.liquid_assigns
    end

    local_assigns = local_assigns&.deep_stringify_keys

    liquid = Liquid::Template.parse(source)
    liquid.render(local_assigns).html_safe
  end

  def compilable?
    false
  end

end
