# encoding: utf-8
require 'bones/rpc/connection'

module Bones
  module RPC
    module Celluloid

      # This class contains behaviour of Bones::RPC socket connections.
      #
      # @since 0.0.1
      class Connection < ::Bones::RPC::Connection

        require 'bones/rpc/celluloid/connection/reader'
        require 'bones/rpc/celluloid/connection/socket'
        require 'bones/rpc/celluloid/connection/writer'

        writer_class ::Bones::RPC::Celluloid::Connection::Writer

        def write(operations)
          with_connection do |socket|
            writer.write(operations)
          end
        end

      end
    end
  end
end
