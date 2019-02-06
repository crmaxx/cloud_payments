# frozen_string_literal: true
require 'date'
require 'hashie'
require 'faraday'
require 'multi_json'
require 'cloud_payments/version'
require 'cloud_payments/namespaces'
require 'cloud_payments/models'

module CloudPayments
  extend self

  autoload :Client, 'cloud_payments/client'
  autoload :Config, 'cloud_payments/config'
  autoload :Webhooks, 'cloud_payments/webhooks'

  def config=(value)
    @config = value
  end

  def config
    @config ||= Config.new
  end

  def configure
    yield config
  end

  def client=(value)
    @client = value
  end

  def client
    @client ||= Client.new
  end

  def webhooks
    @webhooks ||= Webhooks.new
  end
end
