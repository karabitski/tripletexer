module Tripletexer::FormatHelpers
  def format_date(value)
    return value if value.is_a? String
    value.to_date.to_s
  end

  def normalize_body(body)
    return body if body.is_a?(String)
    return JSON.dump(body) if body.is_a?(Hash) || body.is_a?(Array)
    raise ArtumentError, 'unsupported body type'
  end
end
