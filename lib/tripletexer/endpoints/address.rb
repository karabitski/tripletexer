# frozen_string_literal: true

module Tripletexer::Endpoints
  class Address < AbstractEndpoint

    # https://tripletex.no/v2-docs/#!/address/search
    def search(params = {})
      find_entities('/v2/address', params)
    end

    # https://tripletex.no/v2-docs/#!/address/get
    def find(id, params = {})
      find_entity("/v2/address/#{id}", params)
    end

    # https://tripletex.no/v2-docs/#!/address/put
    def update(id, body)
      update_entity("/v2/address/#{id}", body)
    end

  end
end
