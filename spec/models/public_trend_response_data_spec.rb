=begin
#Investabit

#The Investabit API allows for access to all of the public facing services provided, including market data and forecasts.  ## General Overview  1. All API methods will be built to adhere to RESTful best practices as closely as possible. As such, all API calls will be made via the standard HTTP protocol using the GET/POST/PUT/DELETE request types.  2. Every request returns the status as a JSON response with the following   - success, true if it was successful   - code, the http status code (also in the response header)          200 if response is successful          400 if bad request          401 if authorization JWT is wrong or limit exceeded          404 wrong route          500 for any internal errors  - status, the status of the request, default **success**  - errors, an array of any relevant error details  3. For any requests that are not successful an error message is specified and returned as an array for the **errors** key in the JSON response.  4. All authentication uses JSON Web Tokens (JWT), which is set as the **Authorization** entry in the header, see the following for more details.     * http://jwt.io     * https://scotch.io/tutorials/the-anatomy-of-a-json-web-token

OpenAPI spec version: 

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::PublicTrendResponseData
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PublicTrendResponseData' do
  before do
    # run before each test
    @instance = SwaggerClient::PublicTrendResponseData.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PublicTrendResponseData' do
    it 'should create an instance of PublicTrendResponseData' do
      expect(@instance).to be_instance_of(SwaggerClient::PublicTrendResponseData)
    end
  end
  describe 'test attribute "trend"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
