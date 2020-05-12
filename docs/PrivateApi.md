# SwaggerClient::PrivateApi

All URIs are relative to *https://api.cryptoweather.ai*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_private_accuracy_symbol_interval_period_get**](PrivateApi.md#v1_private_accuracy_symbol_interval_period_get) | **GET** /v1/private/accuracy/{symbol}/{interval}/{period} | Accuracy
[**v1_private_forecast_symbol_interval_get**](PrivateApi.md#v1_private_forecast_symbol_interval_get) | **GET** /v1/private/forecast/{symbol}/{interval} | Forecast
[**v1_private_forecast_time_symbol_interval_period_get**](PrivateApi.md#v1_private_forecast_time_symbol_interval_period_get) | **GET** /v1/private/forecast-time/{symbol}/{interval}/{period} | Forecast Time
[**v1_private_trend_symbol_get**](PrivateApi.md#v1_private_trend_symbol_get) | **GET** /v1/private/trend/{symbol} | Trend
[**v1_private_trend_tabular_get**](PrivateApi.md#v1_private_trend_tabular_get) | **GET** /v1/private/trend-tabular | Trend Tabular


# **v1_private_accuracy_symbol_interval_period_get**
> PrivateAccuracyResponse v1_private_accuracy_symbol_interval_period_get(symbol, interval, period, opts)

Accuracy

The accuracy response contains the following attributes.  + `rmse` Root Mean Square Error  + `mae` Mean Absolute error  + `r2` R Squared  + `ci` Confidence Interval lower and upper error bounds

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PrivateApi.new

symbol = 'btc' # String | The cryptocurrency symbol.

interval = '1h' # String | The forecast interval, 1h or 1d.

period = '7d' # String | The period for computing the accuracy, such as the past 7 days.

opts = { 
  cookie: 'csrf=b1820141-1bad-4a9c-93c0-52022817ce89', # String | e.g. csrf=b1820141-1bad-4a9c-93c0-52022817ce89
  x_csrf: 'b1820141-1bad-4a9c-93c0-52022817ce89' # String | e.g. b1820141-1bad-4a9c-93c0-52022817ce89
}

begin
  #Accuracy
  result = api_instance.v1_private_accuracy_symbol_interval_period_get(symbol, interval, period, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PrivateApi->v1_private_accuracy_symbol_interval_period_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The cryptocurrency symbol. | 
 **interval** | **String**| The forecast interval, 1h or 1d. | 
 **period** | **String**| The period for computing the accuracy, such as the past 7 days. | 
 **cookie** | **String**| e.g. csrf&#x3D;b1820141-1bad-4a9c-93c0-52022817ce89 | [optional] 
 **x_csrf** | **String**| e.g. b1820141-1bad-4a9c-93c0-52022817ce89 | [optional] 

### Return type

[**PrivateAccuracyResponse**](PrivateAccuracyResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **v1_private_forecast_symbol_interval_get**
> PrivateForecastResponse v1_private_forecast_symbol_interval_get(symbol, interval, opts)

Forecast

The forecast response contains a sequence of forecasts at the specified intervals, with the following attributes.  + `time_start` start time of the period the forecast is applicable for  + `time_end` end time of the period the forecast is applicable for  + `low` forecasted high during the period  + `high` forecasted low during the period  + `weighted_price` forecasted weighted price during the period  + `change_pct` percent change in price for forecasted weighted_price relative to current price  + `change_usd` dollar change in price for forecasted weighted_price relative to current price

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PrivateApi.new

symbol = 'btc' # String | The cryptocurrency symbol.

interval = '1h' # String | The forecast interval, 1h or 1d.

opts = { 
  cookie: 'csrf=b1820141-1bad-4a9c-93c0-52022817ce89', # String | e.g. csrf=b1820141-1bad-4a9c-93c0-52022817ce89
  x_csrf: 'b1820141-1bad-4a9c-93c0-52022817ce89' # String | e.g. b1820141-1bad-4a9c-93c0-52022817ce89
}

begin
  #Forecast
  result = api_instance.v1_private_forecast_symbol_interval_get(symbol, interval, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PrivateApi->v1_private_forecast_symbol_interval_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The cryptocurrency symbol. | 
 **interval** | **String**| The forecast interval, 1h or 1d. | 
 **cookie** | **String**| e.g. csrf&#x3D;b1820141-1bad-4a9c-93c0-52022817ce89 | [optional] 
 **x_csrf** | **String**| e.g. b1820141-1bad-4a9c-93c0-52022817ce89 | [optional] 

### Return type

[**PrivateForecastResponse**](PrivateForecastResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **v1_private_forecast_time_symbol_interval_period_get**
> PrivateForecastTimeResponse v1_private_forecast_time_symbol_interval_period_get(symbol, interval, period, opts)

Forecast Time



### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PrivateApi.new

symbol = 'btc' # String | The cryptocurrency symbol.

interval = '1h' # String | The forecast interval, 1h or 1d.

period = '7d' # String | The period for computing the error bounds, typically 7d or 30d.

opts = { 
  cookie: 'csrf=b1820141-1bad-4a9c-93c0-52022817ce89', # String | e.g. csrf=b1820141-1bad-4a9c-93c0-52022817ce89
  x_csrf: 'b1820141-1bad-4a9c-93c0-52022817ce89' # String | e.g. b1820141-1bad-4a9c-93c0-52022817ce89
}

begin
  #Forecast Time
  result = api_instance.v1_private_forecast_time_symbol_interval_period_get(symbol, interval, period, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PrivateApi->v1_private_forecast_time_symbol_interval_period_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The cryptocurrency symbol. | 
 **interval** | **String**| The forecast interval, 1h or 1d. | 
 **period** | **String**| The period for computing the error bounds, typically 7d or 30d. | 
 **cookie** | **String**| e.g. csrf&#x3D;b1820141-1bad-4a9c-93c0-52022817ce89 | [optional] 
 **x_csrf** | **String**| e.g. b1820141-1bad-4a9c-93c0-52022817ce89 | [optional] 

### Return type

[**PrivateForecastTimeResponse**](PrivateForecastTimeResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **v1_private_trend_symbol_get**
> PublicTrendResponse v1_private_trend_symbol_get(symbol, opts)

Trend

The trend response contains a collection of forecasts for different intervals with the following attributes.  + `time_start` start time of the period the forecast is applicable for  + `time_end` end time of the period the forecast is applicable for  + `interval` interval in hours that the forecast is applicable for  + `weighted_price` forecasted weighted price during the period  + `change_pct` percent change in price for forecasted weighted_price relative to current price  + `change_usd` dollar change in price for forecasted weighted_price relative to current price

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PrivateApi.new

symbol = 'btc' # String | The cryptocurrency symbol.

opts = { 
  cookie: 'csrf=b1820141-1bad-4a9c-93c0-52022817ce89', # String | e.g. csrf=b1820141-1bad-4a9c-93c0-52022817ce89
  x_csrf: 'b1820141-1bad-4a9c-93c0-52022817ce89' # String | e.g. b1820141-1bad-4a9c-93c0-52022817ce89
}

begin
  #Trend
  result = api_instance.v1_private_trend_symbol_get(symbol, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PrivateApi->v1_private_trend_symbol_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The cryptocurrency symbol. | 
 **cookie** | **String**| e.g. csrf&#x3D;b1820141-1bad-4a9c-93c0-52022817ce89 | [optional] 
 **x_csrf** | **String**| e.g. b1820141-1bad-4a9c-93c0-52022817ce89 | [optional] 

### Return type

[**PublicTrendResponse**](PublicTrendResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **v1_private_trend_tabular_get**
> PrivateTrendTabularResponse v1_private_trend_tabular_get(opts)

Trend Tabular

The trend tabular response contains a collection of forecasts for all supported cryptocurrencies at different intervals with the following attributes.  + `time_start` start time of the period the forecast is applicable for  + `time_end` end time of the period the forecast is applicable for  + `interval` interval in hours that the forecast is applicable for  + `weighted_price` forecasted weighted price during the period  + `change_pct` percent change in price for forecasted weighted_price relative to current price  + `change_usd` dollar change in price for forecasted weighted_price relative to current price

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = SwaggerClient::PrivateApi.new

opts = { 
  cookie: 'csrf=b1820141-1bad-4a9c-93c0-52022817ce89', # String | e.g. csrf=b1820141-1bad-4a9c-93c0-52022817ce89
  x_csrf: 'b1820141-1bad-4a9c-93c0-52022817ce89' # String | e.g. b1820141-1bad-4a9c-93c0-52022817ce89
}

begin
  #Trend Tabular
  result = api_instance.v1_private_trend_tabular_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PrivateApi->v1_private_trend_tabular_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cookie** | **String**| e.g. csrf&#x3D;b1820141-1bad-4a9c-93c0-52022817ce89 | [optional] 
 **x_csrf** | **String**| e.g. b1820141-1bad-4a9c-93c0-52022817ce89 | [optional] 

### Return type

[**PrivateTrendTabularResponse**](PrivateTrendTabularResponse.md)

### Authorization

[oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



