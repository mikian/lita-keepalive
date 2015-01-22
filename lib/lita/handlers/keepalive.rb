module Lita
  module Handlers
    class Keepalive < Handler
      config :url, required: true, type: String

      http.get "/ping" do |request, response|
        response.body << "pong"
      end

      def initialize(*args)
        super

        every(60) do
          http.get "#{config.url}/ping"
        end
      end

    end

    Lita.register_handler(Keepalive)
  end
end
