=begin
#Investabit

#The Investabit API allows for access to all of the public facing services provided, including market data and forecasts.  ## General Overview  1. All API methods will be built to adhere to RESTful best practices as closely as possible. As such, all API calls will be made via the standard HTTP protocol using the GET/POST/PUT/DELETE request types.  2. Every request returns the status as a JSON response with the following   - success, true if it was successful   - code, the http status code (also in the response header)          200 if response is successful          400 if bad request          401 if authorization JWT is wrong or limit exceeded          404 wrong route          500 for any internal errors  - status, the status of the request, default **success**  - errors, an array of any relevant error details  3. For any requests that are not successful an error message is specified and returned as an array for the **errors** key in the JSON response.  4. All authentication uses JSON Web Tokens (JWT), which is set as the **Authorization** entry in the header, see the following for more details.     * http://jwt.io     * https://scotch.io/tutorials/the-anatomy-of-a-json-web-token

OpenAPI spec version: 

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.10-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::PublicApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PublicApi' do
  before do
    # run before each test
    @instance = SwaggerClient::PublicApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PublicApi' do
    it 'should create an instance of PublicApi' do
      expect(@instance).to be_instance_of(SwaggerClient::PublicApi)
    end
  end

  # unit tests for v1_public_price_change_symbol_get
  # Price Change
  # 
  # @param symbol The cryptocurrency symbol.
  # @param [Hash] opts the optional parameters
  # @return [PublicPriceChangeResponse]
  describe 'v1_public_price_change_symbol_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_public_price_current_symbol_get
  # Price Current
  # 
  # @param symbol The cryptocurrency symbol, provide &#x60;all&#x60; to get every symbol.
  # @param [Hash] opts the optional parameters
  # @return [PublicPriceCurrentResponse]
  describe 'v1_public_price_current_symbol_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_public_price_history_symbol_period_interval_get
  # Price History
  # 
  # @param symbol The cryptocurrency symbol, provide &#x60;all&#x60; to get every symbol.
  # @param period The period to get data for, such as past 30 days.
  # @param interval The bar interval, such as 1 day.
  # @param [Hash] opts the optional parameters
  # @return [PublicPriceHistoryResponse]
  describe 'v1_public_price_history_symbol_period_interval_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_public_symbols_get
  # Symbols
  # 
  # @param [Hash] opts the optional parameters
  # @return [PublicSymbolsResponse]
  describe 'v1_public_symbols_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_public_trend_symbol_get
  # Trend
  # 
  # @param symbol The cryptocurrency symbol.
  # @param [Hash] opts the optional parameters
  # @return [PublicTrendResponse]
  describe 'v1_public_trend_symbol_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for v1_public_waiting_list_post
  # Waiting List
  # Subscribe a user to the waiting list, &#x60;name&#x60; is not required.
  # @param [Hash] opts the optional parameters
  # @option opts [PublicWaitingListRequest] :body 
  # @return [DefaultResponse]
  describe 'v1_public_waiting_list_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
