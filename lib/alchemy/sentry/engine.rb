require_relative "../error_tracking/sentry_handler"

module Alchemy
  module Sentry
    class Engine < ::Rails::Engine
      initializer "alchemy.sentry" do
        Alchemy::ErrorTracking.notification_handler = Alchemy::ErrorTracking::SentryHandler
      end
    end
  end
end
