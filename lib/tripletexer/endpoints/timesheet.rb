# frozen_string_literal: true

module Tripletexer::Endpoints
  class Timesheet < AbstractEndpoint
    def entry
      Tripletexer::Endpoints::Timesheet::Entry.new(connection)
    end

    def time_clock
      Tripletexer::Endpoints::Timesheet::TimeClock.new(connection)
    end
  end
end
