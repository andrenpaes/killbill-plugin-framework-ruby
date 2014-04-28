###################################################################################
#                                                                                 #
#                   Copyright 2010-2013 Ning, Inc.                                #
#                                                                                 #
#      Ning licenses this file to you under the Apache License, version 2.0       #
#      (the "License"); you may not use this file except in compliance with the   #
#      License.  You may obtain a copy of the License at:                         #
#                                                                                 #
#          http://www.apache.org/licenses/LICENSE-2.0                             #
#                                                                                 #
#      Unless required by applicable law or agreed to in writing, software        #
#      distributed under the License is distributed on an "AS IS" BASIS, WITHOUT  #
#      WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the  #
#      License for the specific language governing permissions and limitations    #
#      under the License.                                                         #
#                                                                                 #
###################################################################################


#
#                       DO NOT EDIT!!!
#    File automatically generated by killbill-java-parser (git@github.com:killbill/killbill-java-parser.git)
#


module Killbill
  module Plugin
    module Model

      java_package 'org.killbill.billing.payment.plugin.api'
      class HostedPaymentPageFormDescriptor

        include org.killbill.billing.payment.plugin.api.HostedPaymentPageFormDescriptor

        attr_accessor :kb_account_id, :form_method, :form_url, :form_fields, :properties

        def initialize()
        end

        def to_java()
          # conversion for kb_account_id [type = java.util.UUID]
          @kb_account_id = java.util.UUID.fromString(@kb_account_id.to_s) unless @kb_account_id.nil?

          # conversion for form_method [type = java.lang.String]
          @form_method = @form_method.to_s unless @form_method.nil?

          # conversion for form_url [type = java.lang.String]
          @form_url = @form_url.to_s unless @form_url.nil?

          # conversion for form_fields [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@form_fields || []).each do |m|
            # conversion for m [type = org.killbill.billing.payment.api.PluginProperty]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @form_fields = tmp

          # conversion for properties [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@properties || []).each do |m|
            # conversion for m [type = org.killbill.billing.payment.api.PluginProperty]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @properties = tmp
          self
        end

        def to_ruby(j_obj)
          # conversion for kb_account_id [type = java.util.UUID]
          @kb_account_id = j_obj.kb_account_id
          @kb_account_id = @kb_account_id.nil? ? nil : @kb_account_id.to_s

          # conversion for form_method [type = java.lang.String]
          @form_method = j_obj.form_method

          # conversion for form_url [type = java.lang.String]
          @form_url = j_obj.form_url

          # conversion for form_fields [type = java.util.List]
          @form_fields = j_obj.form_fields
          tmp = []
          (@form_fields || []).each do |m|
            # conversion for m [type = org.killbill.billing.payment.api.PluginProperty]
            m = Killbill::Plugin::Model::PluginProperty.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @form_fields = tmp

          # conversion for properties [type = java.util.List]
          @properties = j_obj.properties
          tmp = []
          (@properties || []).each do |m|
            # conversion for m [type = org.killbill.billing.payment.api.PluginProperty]
            m = Killbill::Plugin::Model::PluginProperty.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @properties = tmp
          self
        end

      end
    end
  end
end
