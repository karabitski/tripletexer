# frozen_string_literal: true

module Tripletexer::Endpoints
  class Inventory < AbstractEndpoint
    # https://tripletex.no/v2-docs/#!/inventory/search
    def search(params = {})
      find_entities('/v2/inventory', params)
    end

    # https://tripletex.no/v2-docs/#!/inventory/get
    def find(id, params = {})
      find_entity("/v2/inventory/#{id}", params)
    end
  end
end
