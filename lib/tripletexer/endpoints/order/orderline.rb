# frozen_string_literal: true

module Tripletexer::Endpoints
  class Order::Orderline < Tripletexer::Endpoints::AbstractEndpoint

    # https://tripletex.no/v2-docs/#!/order47orderline/post
    def create(body)
      create_entity('/v2/order/orderline', body)
    end

    # https://tripletex.no/v2-docs/#!/order47orderline/postList
    def create_list(body)
      create_entities('/v2/order/orderline/list', body)
    end

    # https://tripletex.no/v2-docs/#!/order47orderline/get
    def find(id, params = {})
      find_entity("/v2/order/orderline/#{id}", params)
    end
  end
end
