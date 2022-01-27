# frozen_string_literal: true

require "alchemy/error_tracking"

module Alchemy
  module ErrorTracking
    class SentryHandler < BaseHandler
      def self.call(exception)
        return if ["development", "test"].include?(Rails.env)

        Sentry.capture_exception(exception)
      end
    end
  end
end
