# frozen_string_literal: true

module Tripletexer::Endpoints
  class Ledger::Posting < AbstractEndpoint

    # https://tripletex.no/v2-docs/#!/ledger47posting/search
    def search(date_from, date_to, params = {})
      final_params = params.merge(
        'dateFrom' => format_date(date_from),
        'dateTo' => format_date(date_to)
      )
      find_entities('/v2/ledger/posting', final_params)
    end

    # https://tripletex.no/v2-docs/#!/ledger47posting/get
    def find(id, params = {})
      find_entity("/v2/ledger/posting/#{id}", params)
    end

  end
end
