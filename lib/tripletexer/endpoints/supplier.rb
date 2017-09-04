# frozen_string_literal: true

module Tripletexer::Endpoints
  class Supplier < AbstractEndpoint

    # https://tripletex.no/v2-docs/#!/supplier/search
    def search(params = {})
      find_entities('/v2/supplier', params)
    end

    # https://tripletex.no/v2-docs/#!/supplier/post
    def create(body)
      create_entity('/v2/supplier', body)
    end

    # https://tripletex.no/v2-docs/#!/supplier/get
    def find(id, params = {})
      find_entity("/v2/supplier/#{id}", params)
    end

    # https://tripletex.no/v2-docs/#!/supplier/put
    def update(id, body)
      update_entity("/v2/supplier/#{id}", body)
    end

  end
end
