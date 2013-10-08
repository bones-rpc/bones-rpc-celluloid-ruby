# encoding: utf-8
require 'bones/rpc/backend'

module Bones
  module RPC
    module Backend
      module Celluloid

        @backend_name = :celluloid

        def setup
          require 'celluloid/io'
          require 'bones/rpc/celluloid/node'
        end

        def connection_class
          ::Bones::RPC::Celluloid::Connection
        end

        def future_class
          ::Bones::RPC::Celluloid::Future
        end

        def node_class
          ::Bones::RPC::Celluloid::Node
        end

        Backend.register self
      end
    end
  end
end
