# frozen_string_literal: true

module Tripletexer::Endpoints
  class Ledger::VatType < AbstractEndpoint

    # https://tripletex.no/v2-docs/#!/ledger47vatType/search
    def search(params = {})
      find_entities('/v2/ledger/vatType', params)
    end

    # https://tripletex.no/v2-docs/#!/ledger47vatType/get
    def find(id, params = {})
      find_entity("/v2/ledger/vatType/#{id}", params)
    end

  end
end
