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

      java_package 'org.killbill.billing.util.audit'
      class AccountAuditLogs

        include org.killbill.billing.util.audit.AccountAuditLogs

        attr_accessor :audit_logs_for_account, :audit_logs_for_bundle, :audit_logs_for_subscription, :audit_logs_for_subscription_event, :audit_logs_for_blocking_state, :audit_logs_for_invoice, :audit_logs_for_invoice_item, :audit_logs_for_invoice_payment, :audit_logs_for_payment, :audit_logs_for_direct_payment, :audit_logs_for_direct_payment_transaction, :audit_logs_for_payment_method, :audit_logs_for_refund, :audit_logs_for_chargeback, :audit_logs_for_tag, :audit_logs_for_custom_field, :audit_logs

        def initialize()
        end

        def to_java()
          # conversion for audit_logs_for_account [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@audit_logs_for_account || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @audit_logs_for_account = tmp

          # conversion for audit_logs_for_bundle [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@audit_logs_for_bundle || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @audit_logs_for_bundle = tmp

          # conversion for audit_logs_for_subscription [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@audit_logs_for_subscription || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @audit_logs_for_subscription = tmp

          # conversion for audit_logs_for_subscription_event [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@audit_logs_for_subscription_event || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @audit_logs_for_subscription_event = tmp

          # conversion for audit_logs_for_blocking_state [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@audit_logs_for_blocking_state || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @audit_logs_for_blocking_state = tmp

          # conversion for audit_logs_for_invoice [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@audit_logs_for_invoice || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @audit_logs_for_invoice = tmp

          # conversion for audit_logs_for_invoice_item [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@audit_logs_for_invoice_item || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @audit_logs_for_invoice_item = tmp

          # conversion for audit_logs_for_invoice_payment [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@audit_logs_for_invoice_payment || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @audit_logs_for_invoice_payment = tmp

          # conversion for audit_logs_for_payment [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@audit_logs_for_payment || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @audit_logs_for_payment = tmp

          # conversion for audit_logs_for_direct_payment [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@audit_logs_for_direct_payment || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @audit_logs_for_direct_payment = tmp

          # conversion for audit_logs_for_direct_payment_transaction [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@audit_logs_for_direct_payment_transaction || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @audit_logs_for_direct_payment_transaction = tmp

          # conversion for audit_logs_for_payment_method [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@audit_logs_for_payment_method || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @audit_logs_for_payment_method = tmp

          # conversion for audit_logs_for_refund [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@audit_logs_for_refund || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @audit_logs_for_refund = tmp

          # conversion for audit_logs_for_chargeback [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@audit_logs_for_chargeback || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @audit_logs_for_chargeback = tmp

          # conversion for audit_logs_for_tag [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@audit_logs_for_tag || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @audit_logs_for_tag = tmp

          # conversion for audit_logs_for_custom_field [type = java.util.List]
          tmp = java.util.ArrayList.new
          (@audit_logs_for_custom_field || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @audit_logs_for_custom_field = tmp

          # conversion for audit_logs [type = org.killbill.billing.util.audit.AccountAuditLogsForObjectType]
          @audit_logs = @audit_logs.to_java unless @audit_logs.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for audit_logs_for_account [type = java.util.List]
          @audit_logs_for_account = j_obj.audit_logs_for_account
          tmp = []
          (@audit_logs_for_account || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = Killbill::Plugin::Model::AuditLog.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @audit_logs_for_account = tmp

          # conversion for audit_logs_for_bundle [type = java.util.List]
          @audit_logs_for_bundle = j_obj.audit_logs_for_bundle
          tmp = []
          (@audit_logs_for_bundle || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = Killbill::Plugin::Model::AuditLog.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @audit_logs_for_bundle = tmp

          # conversion for audit_logs_for_subscription [type = java.util.List]
          @audit_logs_for_subscription = j_obj.audit_logs_for_subscription
          tmp = []
          (@audit_logs_for_subscription || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = Killbill::Plugin::Model::AuditLog.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @audit_logs_for_subscription = tmp

          # conversion for audit_logs_for_subscription_event [type = java.util.List]
          @audit_logs_for_subscription_event = j_obj.audit_logs_for_subscription_event
          tmp = []
          (@audit_logs_for_subscription_event || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = Killbill::Plugin::Model::AuditLog.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @audit_logs_for_subscription_event = tmp

          # conversion for audit_logs_for_blocking_state [type = java.util.List]
          @audit_logs_for_blocking_state = j_obj.audit_logs_for_blocking_state
          tmp = []
          (@audit_logs_for_blocking_state || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = Killbill::Plugin::Model::AuditLog.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @audit_logs_for_blocking_state = tmp

          # conversion for audit_logs_for_invoice [type = java.util.List]
          @audit_logs_for_invoice = j_obj.audit_logs_for_invoice
          tmp = []
          (@audit_logs_for_invoice || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = Killbill::Plugin::Model::AuditLog.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @audit_logs_for_invoice = tmp

          # conversion for audit_logs_for_invoice_item [type = java.util.List]
          @audit_logs_for_invoice_item = j_obj.audit_logs_for_invoice_item
          tmp = []
          (@audit_logs_for_invoice_item || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = Killbill::Plugin::Model::AuditLog.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @audit_logs_for_invoice_item = tmp

          # conversion for audit_logs_for_invoice_payment [type = java.util.List]
          @audit_logs_for_invoice_payment = j_obj.audit_logs_for_invoice_payment
          tmp = []
          (@audit_logs_for_invoice_payment || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = Killbill::Plugin::Model::AuditLog.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @audit_logs_for_invoice_payment = tmp

          # conversion for audit_logs_for_payment [type = java.util.List]
          @audit_logs_for_payment = j_obj.audit_logs_for_payment
          tmp = []
          (@audit_logs_for_payment || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = Killbill::Plugin::Model::AuditLog.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @audit_logs_for_payment = tmp

          # conversion for audit_logs_for_direct_payment [type = java.util.List]
          @audit_logs_for_direct_payment = j_obj.audit_logs_for_direct_payment
          tmp = []
          (@audit_logs_for_direct_payment || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = Killbill::Plugin::Model::AuditLog.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @audit_logs_for_direct_payment = tmp

          # conversion for audit_logs_for_direct_payment_transaction [type = java.util.List]
          @audit_logs_for_direct_payment_transaction = j_obj.audit_logs_for_direct_payment_transaction
          tmp = []
          (@audit_logs_for_direct_payment_transaction || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = Killbill::Plugin::Model::AuditLog.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @audit_logs_for_direct_payment_transaction = tmp

          # conversion for audit_logs_for_payment_method [type = java.util.List]
          @audit_logs_for_payment_method = j_obj.audit_logs_for_payment_method
          tmp = []
          (@audit_logs_for_payment_method || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = Killbill::Plugin::Model::AuditLog.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @audit_logs_for_payment_method = tmp

          # conversion for audit_logs_for_refund [type = java.util.List]
          @audit_logs_for_refund = j_obj.audit_logs_for_refund
          tmp = []
          (@audit_logs_for_refund || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = Killbill::Plugin::Model::AuditLog.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @audit_logs_for_refund = tmp

          # conversion for audit_logs_for_chargeback [type = java.util.List]
          @audit_logs_for_chargeback = j_obj.audit_logs_for_chargeback
          tmp = []
          (@audit_logs_for_chargeback || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = Killbill::Plugin::Model::AuditLog.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @audit_logs_for_chargeback = tmp

          # conversion for audit_logs_for_tag [type = java.util.List]
          @audit_logs_for_tag = j_obj.audit_logs_for_tag
          tmp = []
          (@audit_logs_for_tag || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = Killbill::Plugin::Model::AuditLog.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @audit_logs_for_tag = tmp

          # conversion for audit_logs_for_custom_field [type = java.util.List]
          @audit_logs_for_custom_field = j_obj.audit_logs_for_custom_field
          tmp = []
          (@audit_logs_for_custom_field || []).each do |m|
            # conversion for m [type = org.killbill.billing.util.audit.AuditLog]
            m = Killbill::Plugin::Model::AuditLog.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @audit_logs_for_custom_field = tmp

          # conversion for audit_logs [type = org.killbill.billing.util.audit.AccountAuditLogsForObjectType]
          @audit_logs = j_obj.audit_logs
          @audit_logs = Killbill::Plugin::Model::AccountAuditLogsForObjectType.new.to_ruby(@audit_logs) unless @audit_logs.nil?
          self
        end

      end
    end
  end
end
