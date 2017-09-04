# frozen_string_literal: true

module Tripletexer::Endpoints
  class Country < AbstractEndpoint

    # https://tripletex.no/v2-docs/#!/country/search
    def search(params = {})
      find_entities('/v2/country', params)
    end

    # https://tripletex.no/v2-docs/#!/country/get
    def find(id, params = {})
      find_entity("/v2/country/#{id}", params)
    end

  end
end
