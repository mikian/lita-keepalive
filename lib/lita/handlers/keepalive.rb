module Lita
  module Handlers
    class Keepalive < Handler
      config :url, required: true, type: String

      http.get '/ping', :ping

      def initialize(*args)
        super
      end

      def ping
        response.write('pong')
      end
    end

    Lita.register_handler(Keepalive)
  end
end
