# frozen_string_literal: true

module Tripletexer::Endpoints
  class Department < AbstractEndpoint

    # https://tripletex.no/v2-docs/#!/department/search
    def search(params = {})
      find_entities('/v2/department', params)
    end

    # https://tripletex.no/v2-docs/#!/department/get
    def find(id, params = {})
      find_entity("/v2/department/#{id}", params)
    end

  end
end
