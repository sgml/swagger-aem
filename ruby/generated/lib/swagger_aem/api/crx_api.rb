=begin
#Adobe Experience Manager (AEM) API

#Swagger AEM is an OpenAPI specification for Adobe Experience Manager (AEM) API

OpenAPI spec version: 1.1.11
Contact: opensource@shinesolutions.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerAemClient
  class CrxApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # 
    # @param cmd 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def post_package_service(cmd, opts = {})
      data, _status_code, _headers = post_package_service_with_http_info(cmd, opts)
      return data
    end

    # 
    # 
    # @param cmd 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def post_package_service_with_http_info(cmd, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CrxApi.post_package_service ..."
      end
      # verify the required parameter 'cmd' is set
      fail ArgumentError, "Missing the required parameter 'cmd' when calling CrxApi.post_package_service" if cmd.nil?
      # resource path
      local_var_path = "/crx/packmgr/service.jsp".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'cmd'] = cmd

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['aemAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CrxApi#post_package_service\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param path 
    # @param cmd 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :group_name 
    # @option opts [String] :package_name 
    # @option opts [String] :package_version 
    # @option opts [String] :_charset_ 
    # @option opts [BOOLEAN] :force 
    # @option opts [BOOLEAN] :recursive 
    # @option opts [File] :package 
    # @return [String]
    def post_package_service_json(path, cmd, opts = {})
      data, _status_code, _headers = post_package_service_json_with_http_info(path, cmd, opts)
      return data
    end

    # 
    # 
    # @param path 
    # @param cmd 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :group_name 
    # @option opts [String] :package_name 
    # @option opts [String] :package_version 
    # @option opts [String] :_charset_ 
    # @option opts [BOOLEAN] :force 
    # @option opts [BOOLEAN] :recursive 
    # @option opts [File] :package 
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def post_package_service_json_with_http_info(path, cmd, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CrxApi.post_package_service_json ..."
      end
      # verify the required parameter 'path' is set
      fail ArgumentError, "Missing the required parameter 'path' when calling CrxApi.post_package_service_json" if path.nil?
      # verify the required parameter 'cmd' is set
      fail ArgumentError, "Missing the required parameter 'cmd' when calling CrxApi.post_package_service_json" if cmd.nil?
      # resource path
      local_var_path = "/crx/packmgr/service/.json/{path}".sub('{format}','json').sub('{' + 'path' + '}', path.to_s)

      # query parameters
      query_params = {}
      query_params[:'cmd'] = cmd
      query_params[:'groupName'] = opts[:'group_name'] if !opts[:'group_name'].nil?
      query_params[:'packageName'] = opts[:'package_name'] if !opts[:'package_name'].nil?
      query_params[:'packageVersion'] = opts[:'package_version'] if !opts[:'package_version'].nil?
      query_params[:'_charset_'] = opts[:'_charset_'] if !opts[:'_charset_'].nil?
      query_params[:'force'] = opts[:'force'] if !opts[:'force'].nil?
      query_params[:'recursive'] = opts[:'recursive'] if !opts[:'recursive'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["package"] = opts[:'package'] if !opts[:'package'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['aemAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CrxApi#post_package_service_json\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param group_name 
    # @param package_name 
    # @param version 
    # @param path 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter 
    # @option opts [String] :_charset_ 
    # @return [String]
    def post_package_update(group_name, package_name, version, path, opts = {})
      data, _status_code, _headers = post_package_update_with_http_info(group_name, package_name, version, path, opts)
      return data
    end

    # 
    # 
    # @param group_name 
    # @param package_name 
    # @param version 
    # @param path 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter 
    # @option opts [String] :_charset_ 
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def post_package_update_with_http_info(group_name, package_name, version, path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CrxApi.post_package_update ..."
      end
      # verify the required parameter 'group_name' is set
      fail ArgumentError, "Missing the required parameter 'group_name' when calling CrxApi.post_package_update" if group_name.nil?
      # verify the required parameter 'package_name' is set
      fail ArgumentError, "Missing the required parameter 'package_name' when calling CrxApi.post_package_update" if package_name.nil?
      # verify the required parameter 'version' is set
      fail ArgumentError, "Missing the required parameter 'version' when calling CrxApi.post_package_update" if version.nil?
      # verify the required parameter 'path' is set
      fail ArgumentError, "Missing the required parameter 'path' when calling CrxApi.post_package_update" if path.nil?
      # resource path
      local_var_path = "/crx/packmgr/update.jsp".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'groupName'] = group_name
      query_params[:'packageName'] = package_name
      query_params[:'version'] = version
      query_params[:'path'] = path
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'_charset_'] = opts[:'_charset_'] if !opts[:'_charset_'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['aemAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CrxApi#post_package_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param old 
    # @param plain 
    # @param verify 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def post_set_password(old, plain, verify, opts = {})
      post_set_password_with_http_info(old, plain, verify, opts)
      return nil
    end

    # 
    # 
    # @param old 
    # @param plain 
    # @param verify 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def post_set_password_with_http_info(old, plain, verify, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CrxApi.post_set_password ..."
      end
      # verify the required parameter 'old' is set
      fail ArgumentError, "Missing the required parameter 'old' when calling CrxApi.post_set_password" if old.nil?
      # verify the required parameter 'plain' is set
      fail ArgumentError, "Missing the required parameter 'plain' when calling CrxApi.post_set_password" if plain.nil?
      # verify the required parameter 'verify' is set
      fail ArgumentError, "Missing the required parameter 'verify' when calling CrxApi.post_set_password" if verify.nil?
      # resource path
      local_var_path = "/crx/explorer/ui/setpassword.jsp".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'old'] = old
      query_params[:'plain'] = plain
      query_params[:'verify'] = verify

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['aemAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CrxApi#post_set_password\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
