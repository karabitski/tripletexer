# frozen_string_literal: true

module Tripletexer::Endpoints
  class Token < AbstractEndpoint
    def consumer
      ::Tripletexer::Endpoints::Token::Consumer.new(connection)
    end

    def session
      ::Tripletexer::Endpoints::Token::Session.new(connection)
    end
  end
end
