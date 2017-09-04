# frozen_string_literal: true

module Tripletexer::Endpoints
  class Currency < AbstractEndpoint

    # https://tripletex.no/v2-docs/#!/currency/search
    def search(params = {})
      find_entities('/v2/currency', params)
    end

    # https://tripletex.no/v2-docs/#!/currency/get
    def find(id, params = {})
      find_entity("/v2/currency/#{id}", params)
    end

  end
end
