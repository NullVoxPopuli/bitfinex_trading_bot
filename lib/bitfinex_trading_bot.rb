# frozen_string_literal: true
require 'bitfinex'
require 'dotenv'

module BitfinexTradingBot
  module_function

  def start
    Dotenv.load

    Bitfinex::Client.configure do |conf|
      conf.secret = ENV['BFX_API_SECRET']
      conf.api_key = ENV['BFX_API_KEY']
    end

    client = Bitfinex::Client.new
    client.balances
  end
end

BitfinexTradingBot.start
