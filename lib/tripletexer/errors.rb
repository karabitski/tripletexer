# frozen_string_literal: true

module Tripletexer::Errors
  class StandardError < ::StandardError; end
  class BadRequest < ::Tripletexer::Errors::StandardError; end
  class Unauthorized < ::Tripletexer::Errors::StandardError; end
  class Forbidden < ::Tripletexer::Errors::StandardError; end
  class NotFound < ::Tripletexer::Errors::StandardError; end
  class Conflict < ::Tripletexer::Errors::StandardError; end
  class InternalError < ::Tripletexer::Errors::StandardError; end
end
