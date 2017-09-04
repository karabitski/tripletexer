# frozen_string_literal: true

module Tripletexer::Endpoints
  class Ledger::VoucherType < AbstractEndpoint

    # https://tripletex.no/v2-docs/#!/ledger47voucherType/search
    def search(params = {})
      find_entities('/v2/ledger/voucherType', params)
    end

    # https://tripletex.no/v2-docs/#!/ledger47voucherType/get
    def find(id, params = {})
      find_entity("/v2/ledger/voucherType/#{id}", params)
    end

  end
end
