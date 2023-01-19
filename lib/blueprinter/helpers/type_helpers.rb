# frozen_string_literal: true

module Blueprinter
  module TypeHelpers
    private
    def active_record_relation?(object)
      !!(defined?(ActiveRecord::Relation) &&
        object.is_a?(ActiveRecord::Relation))
    end

    def mongoid_criteria?(object)
      !!(defined?(Mongoid::Criteria) &&
        object.is_a?(Mongoid::Criteria))
    end

    def array_like?(object)
      object.is_a?(Array) || active_record_relation?(object) || mongoid_criteria?(object)
    end
  end
end
