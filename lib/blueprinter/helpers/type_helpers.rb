# frozen_string_literal: true

module Blueprinter
  module TypeHelpers
    private
    def array_like?(object)
      return false if object.is_a?(Hash)

      object.is_a?(Array) || object.is_a?(Enumerable)
    end
  end
end
