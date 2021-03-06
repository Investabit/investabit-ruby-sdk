# swagger_client

SwaggerClient - the Ruby gem for the CryptoWeather

The CryptoWeather API allows for access to all of the cryptocurrency data and market forecast services provided. There are two primary categories of routes, `public` and `private`, where `public` routes are accessible to the general public and do not require API authentication, and `private` routes, which require API authentication.  ## General Overview  1. All API methods adhere to RESTful best practices as closely as possible. As such, all API calls will be made via the standard HTTP protocol using the GET/POST/PUT/DELETE request types.  2. Every request returns the status as a JSON response with the following:     - success, true if it was successful     - code, the http status code (also in the response header)         - 200 if response is successful         - 400 if bad request         - 401 if authorization JWT is wrong or limit exceeded         - 404 wrong route         - 500 for any internal errors     - status, the status of the request, default **success**     - errors, an array of any relevant error details  3. For any requests that are not successful an error message is specified and returned as an array for the **errors** key in the JSON response.  4. All authentication uses JSON Web Tokens (JWT), which is set as the **Authorization** entry in the header, see the following for more details.     - http://jwt.io     - https://scotch.io/tutorials/the-anatomy-of-a-json-web-token  ## Code Example  The following is a code example in Python, which demonstrates using the [Python Requests library](https://requests.readthedocs.io/en/master/) for both the `public` and `private` API routes.  ``` import requests  HOST = \"https://api.cryptoweather.ai/v1\"  # Your API key (JWT) API_KEY = \"<YOUR API KEY>\"  # Example public request, no API key required. requests.get(\"{}/public/symbols\".format(HOST)).json()  # Get the current btc price using the public route requests.get(\"{}/public/price-current/{}\".format(HOST, \"btc\")).json()   # Example private request, API key required. Get the btc hourly forecasts headers = {\"Authorization\": \"Bearer {}\".format(API_KEY)} requests.get(\"{}/private/forecast/{}/{}\".format(HOST, \"btc\", \"1h\"),              headers=headers).json() ```

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build swagger_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./swagger_client-1.0.0.gem
```
(for development, run `gem install --dev ./swagger_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'swagger_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'swagger_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'swagger_client'

# Setup authorization
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

## Documentation for API Endpoints

All URIs are relative to *https://api.cryptoweather.ai*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwaggerClient::PrivateApi* | [**v1_private_accuracy_symbol_interval_period_get**](docs/PrivateApi.md#v1_private_accuracy_symbol_interval_period_get) | **GET** /v1/private/accuracy/{symbol}/{interval}/{period} | Accuracy
*SwaggerClient::PrivateApi* | [**v1_private_forecast_accuracy_symbol_interval_period_get**](docs/PrivateApi.md#v1_private_forecast_accuracy_symbol_interval_period_get) | **GET** /v1/private/forecast-accuracy/{symbol}/{interval}/{period} | Forecast Accuracy
*SwaggerClient::PrivateApi* | [**v1_private_forecast_symbol_interval_get**](docs/PrivateApi.md#v1_private_forecast_symbol_interval_get) | **GET** /v1/private/forecast/{symbol}/{interval} | Forecast
*SwaggerClient::PrivateApi* | [**v1_private_forecast_time_symbol_interval_period_get**](docs/PrivateApi.md#v1_private_forecast_time_symbol_interval_period_get) | **GET** /v1/private/forecast-time/{symbol}/{interval}/{period} | Forecast Time
*SwaggerClient::PrivateApi* | [**v1_private_trend_symbol_get**](docs/PrivateApi.md#v1_private_trend_symbol_get) | **GET** /v1/private/trend/{symbol} | Trend
*SwaggerClient::PrivateApi* | [**v1_private_trend_tabular_get**](docs/PrivateApi.md#v1_private_trend_tabular_get) | **GET** /v1/private/trend-tabular | Trend Tabular
*SwaggerClient::PublicApi* | [**v1_public_price_change_symbol_get**](docs/PublicApi.md#v1_public_price_change_symbol_get) | **GET** /v1/public/price-change/{symbol} | Price Change
*SwaggerClient::PublicApi* | [**v1_public_price_current_symbol_get**](docs/PublicApi.md#v1_public_price_current_symbol_get) | **GET** /v1/public/price-current/{symbol} | Price Current
*SwaggerClient::PublicApi* | [**v1_public_price_history_symbol_period_interval_get**](docs/PublicApi.md#v1_public_price_history_symbol_period_interval_get) | **GET** /v1/public/price-history/{symbol}/{period}/{interval} | Price History
*SwaggerClient::PublicApi* | [**v1_public_summary_get**](docs/PublicApi.md#v1_public_summary_get) | **GET** /v1/public/summary | Summary
*SwaggerClient::PublicApi* | [**v1_public_symbols_get**](docs/PublicApi.md#v1_public_symbols_get) | **GET** /v1/public/symbols | Symbols
*SwaggerClient::PublicApi* | [**v1_public_trend_symbol_get**](docs/PublicApi.md#v1_public_trend_symbol_get) | **GET** /v1/public/trend/{symbol} | Trend


## Documentation for Models

 - [SwaggerClient::AccuracyRoute](docs/AccuracyRoute.md)
 - [SwaggerClient::DefaultResponse](docs/DefaultResponse.md)
 - [SwaggerClient::ForecastAccuracyRoute](docs/ForecastAccuracyRoute.md)
 - [SwaggerClient::ForecastRoute](docs/ForecastRoute.md)
 - [SwaggerClient::ForecastTimeRoute](docs/ForecastTimeRoute.md)
 - [SwaggerClient::PriceChangeRoute](docs/PriceChangeRoute.md)
 - [SwaggerClient::PriceCurrentRoute](docs/PriceCurrentRoute.md)
 - [SwaggerClient::PriceHistoryRoute](docs/PriceHistoryRoute.md)
 - [SwaggerClient::PrivateAccuracyResponse](docs/PrivateAccuracyResponse.md)
 - [SwaggerClient::PrivateAccuracyResponseData](docs/PrivateAccuracyResponseData.md)
 - [SwaggerClient::PrivateForecastAccuracyResponse](docs/PrivateForecastAccuracyResponse.md)
 - [SwaggerClient::PrivateForecastAccuracyResponseData](docs/PrivateForecastAccuracyResponseData.md)
 - [SwaggerClient::PrivateForecastResponse](docs/PrivateForecastResponse.md)
 - [SwaggerClient::PrivateForecastResponseData](docs/PrivateForecastResponseData.md)
 - [SwaggerClient::PrivateForecastResponseDataForecast](docs/PrivateForecastResponseDataForecast.md)
 - [SwaggerClient::PrivateForecastTimeResponse](docs/PrivateForecastTimeResponse.md)
 - [SwaggerClient::PrivateForecastTimeResponseData](docs/PrivateForecastTimeResponseData.md)
 - [SwaggerClient::PrivateTrendTabularResponse](docs/PrivateTrendTabularResponse.md)
 - [SwaggerClient::PrivateTrendTabularResponseData](docs/PrivateTrendTabularResponseData.md)
 - [SwaggerClient::PrivateTrendTabularResponseDataTrendTabular](docs/PrivateTrendTabularResponseDataTrendTabular.md)
 - [SwaggerClient::PublicPriceChangeResponse](docs/PublicPriceChangeResponse.md)
 - [SwaggerClient::PublicPriceChangeResponseData](docs/PublicPriceChangeResponseData.md)
 - [SwaggerClient::PublicPriceChangeResponseDataPriceChange](docs/PublicPriceChangeResponseDataPriceChange.md)
 - [SwaggerClient::PublicPriceCurrentResponse](docs/PublicPriceCurrentResponse.md)
 - [SwaggerClient::PublicPriceCurrentResponseData](docs/PublicPriceCurrentResponseData.md)
 - [SwaggerClient::PublicPriceCurrentResponseDataCurrent](docs/PublicPriceCurrentResponseDataCurrent.md)
 - [SwaggerClient::PublicPriceHistoryResponse](docs/PublicPriceHistoryResponse.md)
 - [SwaggerClient::PublicPriceHistoryResponseData](docs/PublicPriceHistoryResponseData.md)
 - [SwaggerClient::PublicPriceHistoryResponseDataHistory](docs/PublicPriceHistoryResponseDataHistory.md)
 - [SwaggerClient::PublicPriceHistoryResponseDataPriceHistory](docs/PublicPriceHistoryResponseDataPriceHistory.md)
 - [SwaggerClient::PublicSummaryResponse](docs/PublicSummaryResponse.md)
 - [SwaggerClient::PublicSummaryResponseColor](docs/PublicSummaryResponseColor.md)
 - [SwaggerClient::PublicSummaryResponseData](docs/PublicSummaryResponseData.md)
 - [SwaggerClient::PublicSymbolsResponse](docs/PublicSymbolsResponse.md)
 - [SwaggerClient::PublicSymbolsResponseData](docs/PublicSymbolsResponseData.md)
 - [SwaggerClient::PublicSymbolsResponseDataSymbols](docs/PublicSymbolsResponseDataSymbols.md)
 - [SwaggerClient::PublicTrendResponse](docs/PublicTrendResponse.md)
 - [SwaggerClient::PublicTrendResponseData](docs/PublicTrendResponseData.md)
 - [SwaggerClient::PublicTrendResponseDataTrend](docs/PublicTrendResponseDataTrend.md)
 - [SwaggerClient::SummaryRoute](docs/SummaryRoute.md)
 - [SwaggerClient::SymbolsRoute](docs/SymbolsRoute.md)
 - [SwaggerClient::TrendRoute](docs/TrendRoute.md)
 - [SwaggerClient::TrendTabluarRoute](docs/TrendTabluarRoute.md)


## Documentation for Authorization


### oauth2

- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: 
- **Scopes**: N/A

