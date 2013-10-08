# encoding: utf-8
require 'bones/rpc/node'
require 'bones/rpc/celluloid/connection'
require 'bones/rpc/celluloid/future'

module Bones
  module RPC
    module Celluloid

      # Represents a client to a node in a server cluster.
      #
      # @since 0.0.1
      class Node < ::Bones::RPC::Node
        include ::Celluloid
      end
    end
  end
end
