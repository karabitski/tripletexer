# frozen_string_literal: true

module Tripletexer::Endpoints
  class Ledger::Account < AbstractEndpoint

    # https://tripletex.no/v2-docs/#!/ledger47account/search
    def search(params = {})
      find_entities('/v2/ledger/account', params)
    end

    # https://tripletex.no/v2-docs/#!/ledger47account/get
    def find(id, params = {})
      find_entity("/v2/ledger/account/#{id}", params)
    end

  end
end
