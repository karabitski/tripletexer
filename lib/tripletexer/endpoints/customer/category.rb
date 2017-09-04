# frozen_string_literal: true

module Tripletexer::Endpoints
  class Customer::Category < AbstractEndpoint

    # https://tripletex.no/v2-docs/#!/customer47category/search
    def search(params = {})
      find_entities('/v2/customer/category', params)
    end

    # https://tripletex.no/v2-docs/#!/customer47category/post
    def create(body)
      create_entity('/v2/customer/category', body)
    end

    # https://tripletex.no/v2-docs/#!/customer47category/get
    def find(id, params = {})
      find_entity("/v2/customer/category/#{id}", params)
    end

    # https://tripletex.no/v2-docs/#!/customer47category/put
    def update(id, body)
      update_entity("/v2/customer/category/#{id}", body)
    end

  end
end
