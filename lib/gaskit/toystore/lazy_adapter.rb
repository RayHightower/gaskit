module Gaskit
  module ToyStore
    class LazyAdapter
      def initialize(&block)
        @block = block
      end

      def respond_to?(method)
        @block.call.respond_to?(method)
      end

      def method_missing(method, *args, &block)
        @block.call.send(method, *args, &block)
      end
    end
  end
end