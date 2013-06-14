require 'date'

module Killbill
  module Plugin

    #
    # Represents a subset of the Killbill Apis offered to the ruby plugins
    #
    class KillbillApi

      def initialize(plugin_name, java_service_map)
        @plugin_name = plugin_name
        @services = {}
        java_service_map.each do |k,v|
          @services[k] = create_proxy_api(k, v)
        end
      end

      #
      # Returns the proxy to the java api
      #
      def method_missing(m, *args, &block)
        return @services[m] if @services.include? m
        raise NoMethodError.new("undefined method `#{m}' for #{self}")
      end


      def create_context(tenant_id=nil, user_token=nil, reason_code=nil, comments=nil)
        context = Killbill::Plugin::Model::CallContext.new
        context.tenant_id= tenant_id
        context.user_token= user_token
        context.user_name= @plugin_name
        context.call_origin= :EXTERNAL
        context.user_type= :SYSTEM
        context.reason_code= reason_code
        context.comments= comments
        context.created_date= DateTime.new
        context.updated_date= DateTime.new
        context
      end

      private

      def create_proxy_api(api_name, java_api)
        proxy_class_name = "Killbill::Plugin::Api::#{api_name.to_s.split('_').map{|e| e.capitalize}.join}"
        proxy_class_name.to_class.new(java_api)
      end

    end
  end
end
