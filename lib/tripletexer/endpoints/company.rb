# frozen_string_literal: true

module Tripletexer::Endpoints
  class Company < AbstractEndpoint

    # https://tripletex.no/v2-docs/#!/company/getWithLoginAccess
    def with_login_access(params = {})
      find_entities('/v2/company/>withLoginAccess', params)
    end

    # https://tripletex.no/v2-docs/#!/company/get
    def find(id, params = {})
      find_entity("/v2/company/#{id}", params)
    end

  end
end
