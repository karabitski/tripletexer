# frozen_string_literal: true

module Tripletexer::Endpoints
  class Ledger::AccountingPeriod < AbstractEndpoint

    # https://tripletex.no/v2-docs/#!/ledger47accountingPeriod/search
    def search(params = {})
      find_entities('/v2/ledger/accountingPeriod', params)
    end

    # https://tripletex.no/v2-docs/#!/ledger47accountingPeriod/get
    def find(id, params = {})
      find_entity("/v2/ledger/accountingPeriod/#{id}", params)
    end

  end
end
