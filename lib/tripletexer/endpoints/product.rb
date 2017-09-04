# frozen_string_literal: true

module Tripletexer::Endpoints
  class Product < AbstractEndpoint

    # https://tripletex.no/v2-docs/#!/product/search
    def search(params = {})
      find_entities('/v2/product', params)
    end

    # https://tripletex.no/v2-docs/#!/product/get
    def find(id, params = {})
      find_entity("/v2/product/#{id}", params)
    end

  end
end
