# frozen_string_literal: true

module Tripletexer::Endpoints
  class Token::Consumer < AbstractEndpoint

    # https://tripletex.no/v2-docs/#!/token47consumer/getByToken
    def by_token(token, params = {})
      final_params = params.merge('token' => token)
      find_entity('/v2/token/consumer/byToken', final_params)
    end

  end
end
