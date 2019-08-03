=begin
#Investabit

#The Investabit API allows for access to all of the public facing services provided, including market data and forecasts.  ## General Overview  1. All API methods will be built to adhere to RESTful best practices as closely as possible. As such, all API calls will be made via the standard HTTP protocol using the GET/POST/PUT/DELETE request types.  2. Every request returns the status as a JSON response with the following   - success, true if it was successful   - code, the http status code (also in the response header)          200 if response is successful          400 if bad request          401 if authorization JWT is wrong or limit exceeded          404 wrong route          500 for any internal errors  - status, the status of the request, default **success**  - errors, an array of any relevant error details  3. For any requests that are not successful an error message is specified and returned as an array for the **errors** key in the JSON response.  4. All authentication uses JSON Web Tokens (JWT), which is set as the **Authorization** entry in the header, see the following for more details.     * http://jwt.io     * https://scotch.io/tutorials/the-anatomy-of-a-json-web-token

OpenAPI spec version: 

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8-SNAPSHOT

=end

require 'uri'

module SwaggerClient
  class PublicApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Current
    # 
    # @param symbol The cryptocurrency symbol, provide &#x60;all&#x60; to get every symbol.
    # @param [Hash] opts the optional parameters
    # @return [PublicCurrentResponse]
    def v1_public_current_symbol_get(symbol, opts = {})
      data, _status_code, _headers = v1_public_current_symbol_get_with_http_info(symbol, opts)
      data
    end

    # Current
    # 
    # @param symbol The cryptocurrency symbol, provide &#x60;all&#x60; to get every symbol.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PublicCurrentResponse, Fixnum, Hash)>] PublicCurrentResponse data, response status code and response headers
    def v1_public_current_symbol_get_with_http_info(symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PublicApi.v1_public_current_symbol_get ...'
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling PublicApi.v1_public_current_symbol_get"
      end
      # resource path
      local_var_path = '/v1/public/current/{symbol}'.sub('{' + 'symbol' + '}', symbol.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PublicCurrentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PublicApi#v1_public_current_symbol_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Price Change
    # 
    # @param symbol The cryptocurrency symbol.
    # @param [Hash] opts the optional parameters
    # @return [PublicPriceChangeResponse]
    def v1_public_price_change_symbol_get(symbol, opts = {})
      data, _status_code, _headers = v1_public_price_change_symbol_get_with_http_info(symbol, opts)
      data
    end

    # Price Change
    # 
    # @param symbol The cryptocurrency symbol.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PublicPriceChangeResponse, Fixnum, Hash)>] PublicPriceChangeResponse data, response status code and response headers
    def v1_public_price_change_symbol_get_with_http_info(symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PublicApi.v1_public_price_change_symbol_get ...'
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling PublicApi.v1_public_price_change_symbol_get"
      end
      # resource path
      local_var_path = '/v1/public/price-change/{symbol}'.sub('{' + 'symbol' + '}', symbol.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PublicPriceChangeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PublicApi#v1_public_price_change_symbol_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Price History
    # 
    # @param symbol The cryptocurrency symbol, provide &#x60;all&#x60; to get every symbol.
    # @param period The period to get data for, such as past 30 days.
    # @param interval The bar interval, such as 1 day.
    # @param [Hash] opts the optional parameters
    # @return [PublicPriceHistoryResponse]
    def v1_public_price_history_symbol_period_interval_get(symbol, period, interval, opts = {})
      data, _status_code, _headers = v1_public_price_history_symbol_period_interval_get_with_http_info(symbol, period, interval, opts)
      data
    end

    # Price History
    # 
    # @param symbol The cryptocurrency symbol, provide &#x60;all&#x60; to get every symbol.
    # @param period The period to get data for, such as past 30 days.
    # @param interval The bar interval, such as 1 day.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PublicPriceHistoryResponse, Fixnum, Hash)>] PublicPriceHistoryResponse data, response status code and response headers
    def v1_public_price_history_symbol_period_interval_get_with_http_info(symbol, period, interval, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PublicApi.v1_public_price_history_symbol_period_interval_get ...'
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling PublicApi.v1_public_price_history_symbol_period_interval_get"
      end
      # verify the required parameter 'period' is set
      if @api_client.config.client_side_validation && period.nil?
        fail ArgumentError, "Missing the required parameter 'period' when calling PublicApi.v1_public_price_history_symbol_period_interval_get"
      end
      # verify the required parameter 'interval' is set
      if @api_client.config.client_side_validation && interval.nil?
        fail ArgumentError, "Missing the required parameter 'interval' when calling PublicApi.v1_public_price_history_symbol_period_interval_get"
      end
      # resource path
      local_var_path = '/v1/public/price-history/{symbol}/{period}/{interval}'.sub('{' + 'symbol' + '}', symbol.to_s).sub('{' + 'period' + '}', period.to_s).sub('{' + 'interval' + '}', interval.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PublicPriceHistoryResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PublicApi#v1_public_price_history_symbol_period_interval_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Symbols
    # 
    # @param [Hash] opts the optional parameters
    # @return [PublicSymbolsResponse]
    def v1_public_symbols_get(opts = {})
      data, _status_code, _headers = v1_public_symbols_get_with_http_info(opts)
      data
    end

    # Symbols
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PublicSymbolsResponse, Fixnum, Hash)>] PublicSymbolsResponse data, response status code and response headers
    def v1_public_symbols_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PublicApi.v1_public_symbols_get ...'
      end
      # resource path
      local_var_path = '/v1/public/symbols'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PublicSymbolsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PublicApi#v1_public_symbols_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Trend
    # 
    # @param symbol The cryptocurrency symbol.
    # @param [Hash] opts the optional parameters
    # @return [PublicTrendResponse]
    def v1_public_trend_symbol_get(symbol, opts = {})
      data, _status_code, _headers = v1_public_trend_symbol_get_with_http_info(symbol, opts)
      data
    end

    # Trend
    # 
    # @param symbol The cryptocurrency symbol.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PublicTrendResponse, Fixnum, Hash)>] PublicTrendResponse data, response status code and response headers
    def v1_public_trend_symbol_get_with_http_info(symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PublicApi.v1_public_trend_symbol_get ...'
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling PublicApi.v1_public_trend_symbol_get"
      end
      # resource path
      local_var_path = '/v1/public/trend/{symbol}'.sub('{' + 'symbol' + '}', symbol.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PublicTrendResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PublicApi#v1_public_trend_symbol_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
