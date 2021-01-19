# frozen_string_literal: true

module Primer
  # A basic wrapper component for most layout related needs.
  class BoxComponent < Primer::Component
    # @example 20|Default
    #   <%= render(Primer::BoxComponent.new) { "Your content here" } %>
    #
    # @param system_arguments [Hash] <%= link_to_system_arguments_docs %>
    def initialize(**system_arguments)
      @system_arguments = system_arguments
      @system_arguments[:tag] = :div
    end

    def call
      render(Primer::BaseComponent.new(**@system_arguments)) { content }
    end
  end
end
