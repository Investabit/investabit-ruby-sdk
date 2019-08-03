# SwaggerClient::PublicApi

All URIs are relative to *https://api.investabit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_public_current_symbol_get**](PublicApi.md#v1_public_current_symbol_get) | **GET** /v1/public/current/{symbol} | Current
[**v1_public_price_change_symbol_get**](PublicApi.md#v1_public_price_change_symbol_get) | **GET** /v1/public/price-change/{symbol} | Price Change
[**v1_public_price_history_symbol_period_interval_get**](PublicApi.md#v1_public_price_history_symbol_period_interval_get) | **GET** /v1/public/price-history/{symbol}/{period}/{interval} | Price History
[**v1_public_symbols_get**](PublicApi.md#v1_public_symbols_get) | **GET** /v1/public/symbols | Symbols
[**v1_public_trend_symbol_get**](PublicApi.md#v1_public_trend_symbol_get) | **GET** /v1/public/trend/{symbol} | Trend


# **v1_public_current_symbol_get**
> PublicCurrentResponse v1_public_current_symbol_get(symbol)

Current



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PublicApi.new

symbol = '\"btc\"' # String | The cryptocurrency symbol, provide `all` to get every symbol.


begin
  #Current
  result = api_instance.v1_public_current_symbol_get(symbol)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PublicApi->v1_public_current_symbol_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The cryptocurrency symbol, provide &#x60;all&#x60; to get every symbol. | 

### Return type

[**PublicCurrentResponse**](PublicCurrentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **v1_public_price_change_symbol_get**
> PublicPriceChangeResponse v1_public_price_change_symbol_get(symbol)

Price Change



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PublicApi.new

symbol = '\"btc\"' # String | The cryptocurrency symbol.


begin
  #Price Change
  result = api_instance.v1_public_price_change_symbol_get(symbol)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PublicApi->v1_public_price_change_symbol_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The cryptocurrency symbol. | 

### Return type

[**PublicPriceChangeResponse**](PublicPriceChangeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **v1_public_price_history_symbol_period_interval_get**
> PublicPriceHistoryResponse v1_public_price_history_symbol_period_interval_get(symbol, period, interval)

Price History



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PublicApi.new

symbol = '\"btc\"' # String | The cryptocurrency symbol, provide `all` to get every symbol.

period = '\"30d\"' # String | The period to get data for, such as past 30 days.

interval = '\"1d\"' # String | The bar interval, such as 1 day.


begin
  #Price History
  result = api_instance.v1_public_price_history_symbol_period_interval_get(symbol, period, interval)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PublicApi->v1_public_price_history_symbol_period_interval_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The cryptocurrency symbol, provide &#x60;all&#x60; to get every symbol. | 
 **period** | **String**| The period to get data for, such as past 30 days. | 
 **interval** | **String**| The bar interval, such as 1 day. | 

### Return type

[**PublicPriceHistoryResponse**](PublicPriceHistoryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **v1_public_symbols_get**
> PublicSymbolsResponse v1_public_symbols_get

Symbols



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PublicApi.new

begin
  #Symbols
  result = api_instance.v1_public_symbols_get
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PublicApi->v1_public_symbols_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PublicSymbolsResponse**](PublicSymbolsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **v1_public_trend_symbol_get**
> PublicTrendResponse v1_public_trend_symbol_get(symbol)

Trend



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PublicApi.new

symbol = '\"btc\"' # String | The cryptocurrency symbol.


begin
  #Trend
  result = api_instance.v1_public_trend_symbol_get(symbol)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PublicApi->v1_public_trend_symbol_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The cryptocurrency symbol. | 

### Return type

[**PublicTrendResponse**](PublicTrendResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



