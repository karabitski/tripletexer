# frozen_string_literal: true

module Tripletexer::Endpoints
  class Invoice::PaymentType < AbstractEndpoint

    # https://tripletex.no/v2-docs/#!/invoice47paymentType/search
    def search(params = {})
      find_entities('/v2/invoice/paymentType', params)
    end

    # https://tripletex.no/v2-docs/#!/invoice47paymentType/get
    def find(id, params = {})
      find_entity("/v2/invoice/paymentType/#{id}", params)
    end
  end
end
