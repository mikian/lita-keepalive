module Lita
  module Handlers
    class Keepalive < Handler
      config :url, required: true, type: String

      http.get "/ping" do |request, response|
        response.body << "pong"
      end

      on(:loaded) do
        log.info "Starting Keepalive to #{config.url}/ping"
        every(60) do
          log.info "Keepalive ping..."
          http.get "#{config.url}/ping"
        end
      end

    end

    Lita.register_handler(Keepalive)
  end
end
