=begin
#CryptoWeather

#The CryptoWeather API allows for access to all of the cryptocurrency data and market forecast services provided. There are two primary categories of routes, `public` and `private`, where `public` routes are accessible to the general public and do not require API authentication, and `private` routes, which require API authentication.  ## General Overview  1. All API methods adhere to RESTful best practices as closely as possible. As such, all API calls will be made via the standard HTTP protocol using the GET/POST/PUT/DELETE request types.  2. Every request returns the status as a JSON response with the following:     - success, true if it was successful     - code, the http status code (also in the response header)         - 200 if response is successful         - 400 if bad request         - 401 if authorization JWT is wrong or limit exceeded         - 404 wrong route         - 500 for any internal errors     - status, the status of the request, default **success**     - errors, an array of any relevant error details  3. For any requests that are not successful an error message is specified and returned as an array for the **errors** key in the JSON response.  4. All authentication uses JSON Web Tokens (JWT), which is set as the **Authorization** entry in the header, see the following for more details.     - http://jwt.io     - https://scotch.io/tutorials/the-anatomy-of-a-json-web-token  ## Code Example  The following is a code example in Python, which demonstrates using the [Python Requests library](https://requests.readthedocs.io/en/master/) for both the `public` and `private` API routes.  ``` import requests  HOST = \"https://api.cryptoweather.ai/v1\"  # Your API key (JWT) API_KEY = \"<YOUR API KEY>\"  # Example public request, no API key required. requests.get(\"{}/public/symbols\".format(HOST)).json()  # Get the current btc price using the public route requests.get(\"{}/public/price-current/{}\".format(HOST, \"btc\")).json()   # Example private request, API key required. Get the btc hourly forecasts headers = {\"Authorization\": \"Bearer {}\".format(API_KEY)} requests.get(\"{}/private/forecast/{}/{}\".format(HOST, \"btc\", \"1h\"),              headers=headers).json() ```

OpenAPI spec version: 

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15-SNAPSHOT

=end

require 'uri'

module SwaggerClient
  class PrivateApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Accuracy
    # The accuracy response contains the following attributes.  + `rmse` Root Mean Square Error  + `mae` Mean Absolute error  + `r2` R Squared  + `ci` Confidence Interval lower and upper error bounds
    # @param symbol The cryptocurrency symbol.
    # @param interval The forecast interval, 1h or 1d.
    # @param period The period for computing the accuracy, such as the past 7 days.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cookie e.g. csrf&#x3D;b1820141-1bad-4a9c-93c0-52022817ce89
    # @option opts [String] :x_csrf e.g. b1820141-1bad-4a9c-93c0-52022817ce89
    # @return [PrivateAccuracyResponse]
    def v1_private_accuracy_symbol_interval_period_get(symbol, interval, period, opts = {})
      data, _status_code, _headers = v1_private_accuracy_symbol_interval_period_get_with_http_info(symbol, interval, period, opts)
      data
    end

    # Accuracy
    # The accuracy response contains the following attributes.  + &#x60;rmse&#x60; Root Mean Square Error  + &#x60;mae&#x60; Mean Absolute error  + &#x60;r2&#x60; R Squared  + &#x60;ci&#x60; Confidence Interval lower and upper error bounds
    # @param symbol The cryptocurrency symbol.
    # @param interval The forecast interval, 1h or 1d.
    # @param period The period for computing the accuracy, such as the past 7 days.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cookie e.g. csrf&#x3D;b1820141-1bad-4a9c-93c0-52022817ce89
    # @option opts [String] :x_csrf e.g. b1820141-1bad-4a9c-93c0-52022817ce89
    # @return [Array<(PrivateAccuracyResponse, Fixnum, Hash)>] PrivateAccuracyResponse data, response status code and response headers
    def v1_private_accuracy_symbol_interval_period_get_with_http_info(symbol, interval, period, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateApi.v1_private_accuracy_symbol_interval_period_get ...'
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling PrivateApi.v1_private_accuracy_symbol_interval_period_get"
      end
      # verify the required parameter 'interval' is set
      if @api_client.config.client_side_validation && interval.nil?
        fail ArgumentError, "Missing the required parameter 'interval' when calling PrivateApi.v1_private_accuracy_symbol_interval_period_get"
      end
      # verify the required parameter 'period' is set
      if @api_client.config.client_side_validation && period.nil?
        fail ArgumentError, "Missing the required parameter 'period' when calling PrivateApi.v1_private_accuracy_symbol_interval_period_get"
      end
      # resource path
      local_var_path = '/v1/private/accuracy/{symbol}/{interval}/{period}'.sub('{' + 'symbol' + '}', symbol.to_s).sub('{' + 'interval' + '}', interval.to_s).sub('{' + 'period' + '}', period.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Cookie'] = opts[:'cookie'] if !opts[:'cookie'].nil?
      header_params[:'X-csrf'] = opts[:'x_csrf'] if !opts[:'x_csrf'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PrivateAccuracyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateApi#v1_private_accuracy_symbol_interval_period_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Forecast Accuracy
    # 
    # @param symbol The cryptocurrency symbol.
    # @param interval The forecast interval, 1h or 1d.
    # @param period The period for computing the error bounds, typically 7d or 30d.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cookie e.g. csrf&#x3D;b1820141-1bad-4a9c-93c0-52022817ce89
    # @option opts [String] :x_csrf e.g. b1820141-1bad-4a9c-93c0-52022817ce89
    # @return [PrivateForecastAccuracyResponse]
    def v1_private_forecast_accuracy_symbol_interval_period_get(symbol, interval, period, opts = {})
      data, _status_code, _headers = v1_private_forecast_accuracy_symbol_interval_period_get_with_http_info(symbol, interval, period, opts)
      data
    end

    # Forecast Accuracy
    # 
    # @param symbol The cryptocurrency symbol.
    # @param interval The forecast interval, 1h or 1d.
    # @param period The period for computing the error bounds, typically 7d or 30d.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cookie e.g. csrf&#x3D;b1820141-1bad-4a9c-93c0-52022817ce89
    # @option opts [String] :x_csrf e.g. b1820141-1bad-4a9c-93c0-52022817ce89
    # @return [Array<(PrivateForecastAccuracyResponse, Fixnum, Hash)>] PrivateForecastAccuracyResponse data, response status code and response headers
    def v1_private_forecast_accuracy_symbol_interval_period_get_with_http_info(symbol, interval, period, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateApi.v1_private_forecast_accuracy_symbol_interval_period_get ...'
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling PrivateApi.v1_private_forecast_accuracy_symbol_interval_period_get"
      end
      # verify the required parameter 'interval' is set
      if @api_client.config.client_side_validation && interval.nil?
        fail ArgumentError, "Missing the required parameter 'interval' when calling PrivateApi.v1_private_forecast_accuracy_symbol_interval_period_get"
      end
      # verify the required parameter 'period' is set
      if @api_client.config.client_side_validation && period.nil?
        fail ArgumentError, "Missing the required parameter 'period' when calling PrivateApi.v1_private_forecast_accuracy_symbol_interval_period_get"
      end
      # resource path
      local_var_path = '/v1/private/forecast-accuracy/{symbol}/{interval}/{period}'.sub('{' + 'symbol' + '}', symbol.to_s).sub('{' + 'interval' + '}', interval.to_s).sub('{' + 'period' + '}', period.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Cookie'] = opts[:'cookie'] if !opts[:'cookie'].nil?
      header_params[:'X-csrf'] = opts[:'x_csrf'] if !opts[:'x_csrf'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PrivateForecastAccuracyResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateApi#v1_private_forecast_accuracy_symbol_interval_period_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Forecast
    # The forecast response contains a sequence of forecasts at the specified intervals, with the following attributes.  + `time_start` start time of the period the forecast is applicable for  + `time_end` end time of the period the forecast is applicable for  + `low` forecasted high during the period  + `high` forecasted low during the period  + `weighted_price` forecasted weighted price during the period  + `change_pct` percent change in price for forecasted weighted_price relative to current price  + `change_usd` dollar change in price for forecasted weighted_price relative to current price
    # @param symbol The cryptocurrency symbol.
    # @param interval The forecast interval, 1h or 1d.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cookie e.g. csrf&#x3D;b1820141-1bad-4a9c-93c0-52022817ce89
    # @option opts [String] :x_csrf e.g. b1820141-1bad-4a9c-93c0-52022817ce89
    # @return [PrivateForecastResponse]
    def v1_private_forecast_symbol_interval_get(symbol, interval, opts = {})
      data, _status_code, _headers = v1_private_forecast_symbol_interval_get_with_http_info(symbol, interval, opts)
      data
    end

    # Forecast
    # The forecast response contains a sequence of forecasts at the specified intervals, with the following attributes.  + &#x60;time_start&#x60; start time of the period the forecast is applicable for  + &#x60;time_end&#x60; end time of the period the forecast is applicable for  + &#x60;low&#x60; forecasted high during the period  + &#x60;high&#x60; forecasted low during the period  + &#x60;weighted_price&#x60; forecasted weighted price during the period  + &#x60;change_pct&#x60; percent change in price for forecasted weighted_price relative to current price  + &#x60;change_usd&#x60; dollar change in price for forecasted weighted_price relative to current price
    # @param symbol The cryptocurrency symbol.
    # @param interval The forecast interval, 1h or 1d.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cookie e.g. csrf&#x3D;b1820141-1bad-4a9c-93c0-52022817ce89
    # @option opts [String] :x_csrf e.g. b1820141-1bad-4a9c-93c0-52022817ce89
    # @return [Array<(PrivateForecastResponse, Fixnum, Hash)>] PrivateForecastResponse data, response status code and response headers
    def v1_private_forecast_symbol_interval_get_with_http_info(symbol, interval, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateApi.v1_private_forecast_symbol_interval_get ...'
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling PrivateApi.v1_private_forecast_symbol_interval_get"
      end
      # verify the required parameter 'interval' is set
      if @api_client.config.client_side_validation && interval.nil?
        fail ArgumentError, "Missing the required parameter 'interval' when calling PrivateApi.v1_private_forecast_symbol_interval_get"
      end
      # resource path
      local_var_path = '/v1/private/forecast/{symbol}/{interval}'.sub('{' + 'symbol' + '}', symbol.to_s).sub('{' + 'interval' + '}', interval.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Cookie'] = opts[:'cookie'] if !opts[:'cookie'].nil?
      header_params[:'X-csrf'] = opts[:'x_csrf'] if !opts[:'x_csrf'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PrivateForecastResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateApi#v1_private_forecast_symbol_interval_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Forecast Time
    # 
    # @param symbol The cryptocurrency symbol.
    # @param interval The forecast interval, 1h or 1d.
    # @param period The period for computing the error bounds, typically 7d or 30d.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cookie e.g. csrf&#x3D;b1820141-1bad-4a9c-93c0-52022817ce89
    # @option opts [String] :x_csrf e.g. b1820141-1bad-4a9c-93c0-52022817ce89
    # @return [PrivateForecastTimeResponse]
    def v1_private_forecast_time_symbol_interval_period_get(symbol, interval, period, opts = {})
      data, _status_code, _headers = v1_private_forecast_time_symbol_interval_period_get_with_http_info(symbol, interval, period, opts)
      data
    end

    # Forecast Time
    # 
    # @param symbol The cryptocurrency symbol.
    # @param interval The forecast interval, 1h or 1d.
    # @param period The period for computing the error bounds, typically 7d or 30d.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cookie e.g. csrf&#x3D;b1820141-1bad-4a9c-93c0-52022817ce89
    # @option opts [String] :x_csrf e.g. b1820141-1bad-4a9c-93c0-52022817ce89
    # @return [Array<(PrivateForecastTimeResponse, Fixnum, Hash)>] PrivateForecastTimeResponse data, response status code and response headers
    def v1_private_forecast_time_symbol_interval_period_get_with_http_info(symbol, interval, period, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateApi.v1_private_forecast_time_symbol_interval_period_get ...'
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling PrivateApi.v1_private_forecast_time_symbol_interval_period_get"
      end
      # verify the required parameter 'interval' is set
      if @api_client.config.client_side_validation && interval.nil?
        fail ArgumentError, "Missing the required parameter 'interval' when calling PrivateApi.v1_private_forecast_time_symbol_interval_period_get"
      end
      # verify the required parameter 'period' is set
      if @api_client.config.client_side_validation && period.nil?
        fail ArgumentError, "Missing the required parameter 'period' when calling PrivateApi.v1_private_forecast_time_symbol_interval_period_get"
      end
      # resource path
      local_var_path = '/v1/private/forecast-time/{symbol}/{interval}/{period}'.sub('{' + 'symbol' + '}', symbol.to_s).sub('{' + 'interval' + '}', interval.to_s).sub('{' + 'period' + '}', period.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Cookie'] = opts[:'cookie'] if !opts[:'cookie'].nil?
      header_params[:'X-csrf'] = opts[:'x_csrf'] if !opts[:'x_csrf'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PrivateForecastTimeResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateApi#v1_private_forecast_time_symbol_interval_period_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Trend
    # The trend response contains a collection of forecasts for different intervals with the following attributes.  + `time_start` start time of the period the forecast is applicable for  + `time_end` end time of the period the forecast is applicable for  + `interval` interval in hours that the forecast is applicable for  + `weighted_price` forecasted weighted price during the period  + `change_pct` percent change in price for forecasted weighted_price relative to current price  + `change_usd` dollar change in price for forecasted weighted_price relative to current price
    # @param symbol The cryptocurrency symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cookie e.g. csrf&#x3D;b1820141-1bad-4a9c-93c0-52022817ce89
    # @option opts [String] :x_csrf e.g. b1820141-1bad-4a9c-93c0-52022817ce89
    # @return [PublicTrendResponse]
    def v1_private_trend_symbol_get(symbol, opts = {})
      data, _status_code, _headers = v1_private_trend_symbol_get_with_http_info(symbol, opts)
      data
    end

    # Trend
    # The trend response contains a collection of forecasts for different intervals with the following attributes.  + &#x60;time_start&#x60; start time of the period the forecast is applicable for  + &#x60;time_end&#x60; end time of the period the forecast is applicable for  + &#x60;interval&#x60; interval in hours that the forecast is applicable for  + &#x60;weighted_price&#x60; forecasted weighted price during the period  + &#x60;change_pct&#x60; percent change in price for forecasted weighted_price relative to current price  + &#x60;change_usd&#x60; dollar change in price for forecasted weighted_price relative to current price
    # @param symbol The cryptocurrency symbol.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cookie e.g. csrf&#x3D;b1820141-1bad-4a9c-93c0-52022817ce89
    # @option opts [String] :x_csrf e.g. b1820141-1bad-4a9c-93c0-52022817ce89
    # @return [Array<(PublicTrendResponse, Fixnum, Hash)>] PublicTrendResponse data, response status code and response headers
    def v1_private_trend_symbol_get_with_http_info(symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateApi.v1_private_trend_symbol_get ...'
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling PrivateApi.v1_private_trend_symbol_get"
      end
      # resource path
      local_var_path = '/v1/private/trend/{symbol}'.sub('{' + 'symbol' + '}', symbol.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Cookie'] = opts[:'cookie'] if !opts[:'cookie'].nil?
      header_params[:'X-csrf'] = opts[:'x_csrf'] if !opts[:'x_csrf'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PublicTrendResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateApi#v1_private_trend_symbol_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Trend Tabular
    # The trend tabular response contains a collection of forecasts for all supported cryptocurrencies at different intervals with the following attributes.  + `time_start` start time of the period the forecast is applicable for  + `time_end` end time of the period the forecast is applicable for  + `interval` interval in hours that the forecast is applicable for  + `weighted_price` forecasted weighted price during the period  + `change_pct` percent change in price for forecasted weighted_price relative to current price  + `change_usd` dollar change in price for forecasted weighted_price relative to current price
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cookie e.g. csrf&#x3D;b1820141-1bad-4a9c-93c0-52022817ce89
    # @option opts [String] :x_csrf e.g. b1820141-1bad-4a9c-93c0-52022817ce89
    # @return [PrivateTrendTabularResponse]
    def v1_private_trend_tabular_get(opts = {})
      data, _status_code, _headers = v1_private_trend_tabular_get_with_http_info(opts)
      data
    end

    # Trend Tabular
    # The trend tabular response contains a collection of forecasts for all supported cryptocurrencies at different intervals with the following attributes.  + &#x60;time_start&#x60; start time of the period the forecast is applicable for  + &#x60;time_end&#x60; end time of the period the forecast is applicable for  + &#x60;interval&#x60; interval in hours that the forecast is applicable for  + &#x60;weighted_price&#x60; forecasted weighted price during the period  + &#x60;change_pct&#x60; percent change in price for forecasted weighted_price relative to current price  + &#x60;change_usd&#x60; dollar change in price for forecasted weighted_price relative to current price
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cookie e.g. csrf&#x3D;b1820141-1bad-4a9c-93c0-52022817ce89
    # @option opts [String] :x_csrf e.g. b1820141-1bad-4a9c-93c0-52022817ce89
    # @return [Array<(PrivateTrendTabularResponse, Fixnum, Hash)>] PrivateTrendTabularResponse data, response status code and response headers
    def v1_private_trend_tabular_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrivateApi.v1_private_trend_tabular_get ...'
      end
      # resource path
      local_var_path = '/v1/private/trend-tabular'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Cookie'] = opts[:'cookie'] if !opts[:'cookie'].nil?
      header_params[:'X-csrf'] = opts[:'x_csrf'] if !opts[:'x_csrf'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PrivateTrendTabularResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrivateApi#v1_private_trend_tabular_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
