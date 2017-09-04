# frozen_string_literal: true

module Tripletexer::Endpoints
  class Project::Category < AbstractEndpoint

    # https://tripletex.no/v2-docs/#!/project47category/search
    def search(params = {})
      find_entities('/v2/project/category', params)
    end

    # https://tripletex.no/v2-docs/#!/project47category/post
    def create(body)
      create_entity('/v2/project/category', body)
    end

    # https://tripletex.no/v2-docs/#!/project47category/get
    def find(id, params = {})
      find_entity("/v2/project/category/#{id}", params)
    end

    # https://tripletex.no/v2-docs/#!/project47category/put
    def update(id, body)
      update_entity("/v2/project/category/#{id}", body)
    end

  end
end
