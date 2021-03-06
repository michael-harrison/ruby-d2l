module Valence
  module D2l
    class WebException < RuntimeError
      attr_reader :request_result, :response_body

      def initialize(status_code, response_body)
        @response_body = response_body
        @request_result = Valence::RequestResult.new(status_code)
      end
    end
  end
end