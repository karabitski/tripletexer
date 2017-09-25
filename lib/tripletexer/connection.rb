# frozen_string_literal: true

require 'json'
require 'faraday'
require 'faraday_middleware'

class Tripletexer::Connection
  ENDPOINT = 'https://tripletex.no/'

  attr_reader :token

  def initialize(object_class: Hash, proxy: nil)
    @object_class = object_class
    @proxy = proxy
  end

  def connection
    return @connection if token && @connection
    @connection = init_connection
  end

  def reset
    @token = nil
    @connection = nil
    nil
  end

  def token=(new_token)
    reset
    @token = new_token
  end

  private

  attr_reader :object_class, :proxy

  def init_connection
    Faraday.new(url: ENDPOINT) do |faraday|
      faraday.response :logger
      faraday.response :json, parser_options: { object_class: object_class }, content_type: %r[/json$]
      faraday.headers = {
        'Content-Type': 'application/json'
      }
      faraday.adapter :net_http
      faraday.basic_auth(0, token) if token
      faraday.proxy = proxy if proxy # https://github.com/lostisland/faraday/issues/733
    end
  end
end
