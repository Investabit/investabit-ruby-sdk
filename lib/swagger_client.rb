=begin
#Investabit

#The Investabit API allows for access to all of the public facing services provided, including market data and forecasts.  ## General Overview  1. All API methods will be built to adhere to RESTful best practices as closely as possible. As such, all API calls will be made via the standard HTTP protocol using the GET/POST/PUT/DELETE request types.  2. Every request returns the status as a JSON response with the following   - success, true if it was successful   - code, the http status code (also in the response header)          200 if response is successful          400 if bad request          401 if authorization JWT is wrong or limit exceeded          404 wrong route          500 for any internal errors  - status, the status of the request, default **success**  - errors, an array of any relevant error details  3. For any requests that are not successful an error message is specified and returned as an array for the **errors** key in the JSON response.  4. All authentication uses JSON Web Tokens (JWT), which is set as the **Authorization** entry in the header, see the following for more details.     * http://jwt.io     * https://scotch.io/tutorials/the-anatomy-of-a-json-web-token

OpenAPI spec version: 

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8-SNAPSHOT

=end

# Common files
require 'swagger_client/api_client'
require 'swagger_client/api_error'
require 'swagger_client/version'
require 'swagger_client/configuration'

# Models
require 'swagger_client/models/current_route'
require 'swagger_client/models/default_response'
require 'swagger_client/models/price_change_route'
require 'swagger_client/models/price_history_route'
require 'swagger_client/models/public_current_response'
require 'swagger_client/models/public_current_response_data'
require 'swagger_client/models/public_current_response_data_current'
require 'swagger_client/models/public_price_change_response'
require 'swagger_client/models/public_price_change_response_data'
require 'swagger_client/models/public_price_change_response_data_price_change'
require 'swagger_client/models/public_price_history_response'
require 'swagger_client/models/public_price_history_response_data'
require 'swagger_client/models/public_price_history_response_data_history'
require 'swagger_client/models/public_price_history_response_data_price_history'
require 'swagger_client/models/public_symbols_response'
require 'swagger_client/models/public_symbols_response_data'
require 'swagger_client/models/public_symbols_response_data_symbols'
require 'swagger_client/models/public_trend_response'
require 'swagger_client/models/public_trend_response_data'
require 'swagger_client/models/public_trend_response_data_trend'
require 'swagger_client/models/symbols_route'
require 'swagger_client/models/trend_route'

# APIs
require 'swagger_client/api/public_api'

module SwaggerClient
  class << self
    # Customize default settings for the SDK using block.
    #   SwaggerClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
