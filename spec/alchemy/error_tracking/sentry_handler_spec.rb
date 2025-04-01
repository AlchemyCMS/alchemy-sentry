require "rails_helper"
require "alchemy/error_tracking/sentry_handler"

module Alchemy
  module ErrorTracking
    RSpec.describe SentryHandler do
      let(:exception) { StandardError.new("Test exception") }

      describe ".call" do
        context "when environment is test" do
          it "does not report the exception to Sentry" do
            allow(::Rails).to receive(:env).and_return("test")

            expect(::Sentry).not_to receive(:capture_exception)
            SentryHandler.call(exception)
          end
        end

        context "when environment is development" do
          it "does not report the exception to Sentry" do
            allow(::Rails).to receive(:env).and_return("development")

            expect(::Sentry).not_to receive(:capture_exception)
            SentryHandler.call(exception)
          end
        end

        context "when environment is production" do
          it "reports the exception to Sentry" do
            allow(::Rails).to receive(:env).and_return("production")

            expect(::Sentry).to receive(:capture_exception).with(exception)
            SentryHandler.call(exception)
          end
        end
      end
    end
  end
end
