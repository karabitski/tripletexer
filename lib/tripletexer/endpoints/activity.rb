# frozen_string_literal: true

module Tripletexer::Endpoints
  class Activity < AbstractEndpoint

    # https://tripletex.no/v2-docs/#!/activity/search
    def search(params = {})
      find_entities('/v2/activity', params)
    end

    # https://tripletex.no/v2-docs/#!/activity/getForTimeSheet
    def get_for_time_sheet(project_id, params = {})
      final_params = params.merge('projectId' => project_id)
      find_entities('/v2/activity/>forTimeSheet', final_params)
    end

    # https://tripletex.no/v2-docs/#!/activity/get
    def find(id, params = {})
      find_entity("/v2/activity/#{id}", params)
    end
  end
end
