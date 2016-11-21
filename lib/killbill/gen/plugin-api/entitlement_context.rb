#############################################################################################
#                                                                                           #
#                   Copyright 2010-2013 Ning, Inc.                                          #
#                   Copyright 2014 Groupon, Inc.                                            #
#                   Copyright 2014 The Billing Project, LLC                                 #
#                                                                                           #
#      The Billing Project licenses this file to you under the Apache License, version 2.0  #
#      (the "License"); you may not use this file except in compliance with the             #
#      License.  You may obtain a copy of the License at:                                   #
#                                                                                           #
#          http://www.apache.org/licenses/LICENSE-2.0                                       #
#                                                                                           #
#      Unless required by applicable law or agreed to in writing, software                  #
#      distributed under the License is distributed on an "AS IS" BASIS, WITHOUT            #
#      WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the            #
#      License for the specific language governing permissions and limitations              #
#      under the License.                                                                   #
#                                                                                           #
#############################################################################################


#
#                       DO NOT EDIT!!!
#    File automatically generated by killbill-java-parser (git@github.com:killbill/killbill-java-parser.git)
#


module Killbill
  module Plugin
    module Model

      java_package 'org.killbill.billing.entitlement.plugin.api'
      class EntitlementContext

        include org.killbill.billing.entitlement.plugin.api.EntitlementContext

        attr_accessor :user_token, :user_name, :call_origin, :user_type, :reason_code, :comments, :created_date, :updated_date, :tenant_id, :operation_type, :account_id, :destination_account_id, :base_entitlement_with_add_ons_specifiers, :billing_action_policy, :plugin_properties

        def initialize()
        end

        def to_java()
          # conversion for user_token [type = java.util.UUID]
          @user_token = java.util.UUID.fromString(@user_token.to_s) unless @user_token.nil?

          # conversion for user_name [type = java.lang.String]
          @user_name = @user_name.to_s unless @user_name.nil?

          # conversion for call_origin [type = org.killbill.billing.util.callcontext.CallOrigin]
          @call_origin = Java::org.killbill.billing.util.callcontext.CallOrigin.value_of( @call_origin.to_s ) unless @call_origin.nil?

          # conversion for user_type [type = org.killbill.billing.util.callcontext.UserType]
          @user_type = Java::org.killbill.billing.util.callcontext.UserType.value_of( @user_type.to_s ) unless @user_type.nil?

          # conversion for reason_code [type = java.lang.String]
          @reason_code = @reason_code.to_s unless @reason_code.nil?

          # conversion for comments [type = java.lang.String]
          @comments = @comments.to_s unless @comments.nil?

          # conversion for created_date [type = org.joda.time.DateTime]
          if !@created_date.nil?
            @created_date =  (@created_date.kind_of? Time) ? DateTime.parse(@created_date.to_s) : @created_date
            @created_date = Java::org.joda.time.DateTime.new(@created_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for updated_date [type = org.joda.time.DateTime]
          if !@updated_date.nil?
            @updated_date =  (@updated_date.kind_of? Time) ? DateTime.parse(@updated_date.to_s) : @updated_date
            @updated_date = Java::org.joda.time.DateTime.new(@updated_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for tenant_id [type = java.util.UUID]
          @tenant_id = java.util.UUID.fromString(@tenant_id.to_s) unless @tenant_id.nil?

          # conversion for operation_type [type = org.killbill.billing.entitlement.plugin.api.OperationType]
          @operation_type = Java::org.killbill.billing.entitlement.plugin.api.OperationType.value_of( @operation_type.to_s ) unless @operation_type.nil?

          # conversion for account_id [type = java.util.UUID]
          @account_id = java.util.UUID.fromString(@account_id.to_s) unless @account_id.nil?

          # conversion for destination_account_id [type = java.util.UUID]
          @destination_account_id = java.util.UUID.fromString(@destination_account_id.to_s) unless @destination_account_id.nil?

          # conversion for base_entitlement_with_add_ons_specifiers [type = java.lang.Iterable]
          tmp = java.util.ArrayList.new
          (@base_entitlement_with_add_ons_specifiers || []).each do |m|
            # conversion for m [type = org.killbill.billing.entitlement.api.BaseEntitlementWithAddOnsSpecifier]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @base_entitlement_with_add_ons_specifiers = tmp

          # conversion for billing_action_policy [type = org.killbill.billing.catalog.api.BillingActionPolicy]
          @billing_action_policy = Java::org.killbill.billing.catalog.api.BillingActionPolicy.value_of( @billing_action_policy.to_s ) unless @billing_action_policy.nil?

          # conversion for plugin_properties [type = java.lang.Iterable]
          tmp = java.util.ArrayList.new
          (@plugin_properties || []).each do |m|
            # conversion for m [type = org.killbill.billing.payment.api.PluginProperty]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @plugin_properties = tmp
          self
        end

        def to_ruby(j_obj)
          # conversion for user_token [type = java.util.UUID]
          @user_token = j_obj.user_token
          @user_token = @user_token.nil? ? nil : @user_token.to_s

          # conversion for user_name [type = java.lang.String]
          @user_name = j_obj.user_name

          # conversion for call_origin [type = org.killbill.billing.util.callcontext.CallOrigin]
          @call_origin = j_obj.call_origin
          @call_origin = @call_origin.to_s.to_sym unless @call_origin.nil?

          # conversion for user_type [type = org.killbill.billing.util.callcontext.UserType]
          @user_type = j_obj.user_type
          @user_type = @user_type.to_s.to_sym unless @user_type.nil?

          # conversion for reason_code [type = java.lang.String]
          @reason_code = j_obj.reason_code

          # conversion for comments [type = java.lang.String]
          @comments = j_obj.comments

          # conversion for created_date [type = org.joda.time.DateTime]
          @created_date = j_obj.created_date
          if !@created_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@created_date)
            @created_date = DateTime.iso8601(str)
          end

          # conversion for updated_date [type = org.joda.time.DateTime]
          @updated_date = j_obj.updated_date
          if !@updated_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@updated_date)
            @updated_date = DateTime.iso8601(str)
          end

          # conversion for tenant_id [type = java.util.UUID]
          @tenant_id = j_obj.tenant_id
          @tenant_id = @tenant_id.nil? ? nil : @tenant_id.to_s

          # conversion for operation_type [type = org.killbill.billing.entitlement.plugin.api.OperationType]
          @operation_type = j_obj.operation_type
          @operation_type = @operation_type.to_s.to_sym unless @operation_type.nil?

          # conversion for account_id [type = java.util.UUID]
          @account_id = j_obj.account_id
          @account_id = @account_id.nil? ? nil : @account_id.to_s

          # conversion for destination_account_id [type = java.util.UUID]
          @destination_account_id = j_obj.destination_account_id
          @destination_account_id = @destination_account_id.nil? ? nil : @destination_account_id.to_s

          # conversion for base_entitlement_with_add_ons_specifiers [type = java.lang.Iterable]
          @base_entitlement_with_add_ons_specifiers = j_obj.base_entitlement_with_add_ons_specifiers
          tmp = []
          (@base_entitlement_with_add_ons_specifiers.nil? ? [] : @base_entitlement_with_add_ons_specifiers.iterator).each do |m|
            # conversion for m [type = org.killbill.billing.entitlement.api.BaseEntitlementWithAddOnsSpecifier]
            m = Killbill::Plugin::Model::BaseEntitlementWithAddOnsSpecifier.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @base_entitlement_with_add_ons_specifiers = tmp

          # conversion for billing_action_policy [type = org.killbill.billing.catalog.api.BillingActionPolicy]
          @billing_action_policy = j_obj.billing_action_policy
          @billing_action_policy = @billing_action_policy.to_s.to_sym unless @billing_action_policy.nil?

          # conversion for plugin_properties [type = java.lang.Iterable]
          @plugin_properties = j_obj.plugin_properties
          tmp = []
          (@plugin_properties.nil? ? [] : @plugin_properties.iterator).each do |m|
            # conversion for m [type = org.killbill.billing.payment.api.PluginProperty]
            m = Killbill::Plugin::Model::PluginProperty.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @plugin_properties = tmp
          self
        end

      end
    end
  end
end
