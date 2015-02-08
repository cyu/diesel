require 'diesel/swagger/node'
require 'diesel/swagger/operation'

module Diesel
  module Swagger
    class Path < Node
      attribute :get, validate: true
      attribute :put, validate: true
      attribute :post, validate: true
      attribute :delete, validate: true
      attribute :options, validate: true
      attribute :head, validate: true
      attribute :patch, validate: true
      attr_reader :id
      alias :path_name :id

      list :parameters, validate: true

      def initialize(id)
        super()
        @id = id
      end

      def operations_map
        [:get, :put, :post, :delete, :options, :head, :patch].reduce({}) do |m, method|
          if op = __send__(method)
            m[method] = op
          end
          m
        end
      end
    end
  end
end
