# frozen_string_literal: true

module Tripletexer::Endpoints
  class Employee::Entitlement < AbstractEndpoint
    # https://tripletex.no/v2-docs/#!/employee47entitlement/search
    def search(params = {})
      find_entities('/v2/employee/entitlement', params)
    end

    # https://tripletex.no/v2-docs/#!/employee47entitlement/get
    def find(id, params = {})
      find_entity("/v2/employee/entitlement/#{id}", params)
    end
  end
end
