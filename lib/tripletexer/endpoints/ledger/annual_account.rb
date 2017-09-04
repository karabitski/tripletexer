# frozen_string_literal: true

module Tripletexer::Endpoints
  class Ledger::AnnualAccount < AbstractEndpoint

    # https://tripletex.no/v2-docs/#!/ledger47annualAccount/search
    def search(params = {})
      find_entities('/v2/ledger/annualAccount', params)
    end

    # https://tripletex.no/v2-docs/#!/ledger47annualAccount/get
    def find(id, params = {})
      find_entity("/v2/ledger/annualAccount/#{id}", params)
    end

  end
end
