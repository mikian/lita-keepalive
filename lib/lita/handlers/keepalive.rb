module Lita
  module Handlers
    class Keepalive < Handler
      config :url, required: true, type: String

      http.get "/ping" do |request, response|
        response.body << "pong"
      end

      def initialize(*args)
        super
      end

    end

    Lita.register_handler(Keepalive)
  end
end
