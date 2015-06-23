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

      java_package 'org.killbill.billing.entitlement.api'
      class EntitlementAOStatusDryRun

        include org.killbill.billing.entitlement.api.EntitlementAOStatusDryRun

        attr_accessor :id, :product_name, :billing_period, :price_list, :phase_type, :reason

        def initialize()
        end

        def to_java()
          # conversion for id [type = java.util.UUID]
          @id = java.util.UUID.fromString(@id.to_s) unless @id.nil?

          # conversion for product_name [type = java.lang.String]
          @product_name = @product_name.to_s unless @product_name.nil?

          # conversion for billing_period [type = org.killbill.billing.catalog.api.BillingPeriod]
          @billing_period = Java::org.killbill.billing.catalog.api.BillingPeriod.value_of( @billing_period.to_s ) unless @billing_period.nil?

          # conversion for price_list [type = java.lang.String]
          @price_list = @price_list.to_s unless @price_list.nil?

          # conversion for phase_type [type = org.killbill.billing.catalog.api.PhaseType]
          @phase_type = Java::org.killbill.billing.catalog.api.PhaseType.value_of( @phase_type.to_s ) unless @phase_type.nil?

          # conversion for reason [type = org.killbill.billing.entitlement.api.DryRunChangeReason]
          @reason = Java::org.killbill.billing.entitlement.api.DryRunChangeReason.value_of( @reason.to_s ) unless @reason.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for id [type = java.util.UUID]
          @id = j_obj.id
          @id = @id.nil? ? nil : @id.to_s

          # conversion for product_name [type = java.lang.String]
          @product_name = j_obj.product_name

          # conversion for billing_period [type = org.killbill.billing.catalog.api.BillingPeriod]
          @billing_period = j_obj.billing_period
          @billing_period = @billing_period.to_s.to_sym unless @billing_period.nil?

          # conversion for price_list [type = java.lang.String]
          @price_list = j_obj.price_list

          # conversion for phase_type [type = org.killbill.billing.catalog.api.PhaseType]
          @phase_type = j_obj.phase_type
          @phase_type = @phase_type.to_s.to_sym unless @phase_type.nil?

          # conversion for reason [type = org.killbill.billing.entitlement.api.DryRunChangeReason]
          @reason = j_obj.reason
          @reason = @reason.to_s.to_sym unless @reason.nil?
          self
        end

      end
    end
  end
end
