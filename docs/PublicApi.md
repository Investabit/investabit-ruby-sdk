# SwaggerClient::PublicApi

All URIs are relative to *https://api.investabit.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_public_current_symbol_get**](PublicApi.md#v1_public_current_symbol_get) | **GET** /v1/public/current/{symbol} | Current
[**v1_public_price_history_symbol_get**](PublicApi.md#v1_public_price_history_symbol_get) | **GET** /v1/public/price-history/{symbol} | Price History
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

symbol = '\"btc\"' # String | The cryptocurrency symbol, default is btc.


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
 **symbol** | **String**| The cryptocurrency symbol, default is btc. | 

### Return type

[**PublicCurrentResponse**](PublicCurrentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **v1_public_price_history_symbol_get**
> PublicPriceResponse v1_public_price_history_symbol_get(symbol)

Price History



### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::PublicApi.new

symbol = '\"btc\"' # String | The cryptocurrency symbol, default is btc.


begin
  #Price History
  result = api_instance.v1_public_price_history_symbol_get(symbol)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PublicApi->v1_public_price_history_symbol_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| The cryptocurrency symbol, default is btc. | 

### Return type

[**PublicPriceResponse**](PublicPriceResponse.md)

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

symbol = '\"btc\"' # String | The cryptocurrency symbol, default is btc.


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
 **symbol** | **String**| The cryptocurrency symbol, default is btc. | 

### Return type

[**PublicTrendResponse**](PublicTrendResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



