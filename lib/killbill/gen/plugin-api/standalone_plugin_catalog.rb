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

      java_package 'org.killbill.billing.catalog.plugin.api'
      class StandalonePluginCatalog

        include org.killbill.billing.catalog.plugin.api.StandalonePluginCatalog

        attr_accessor :effective_date, :currencies, :units, :products, :plans, :default_price_list, :children_price_list, :plan_rules

        def initialize()
        end

        def to_java()
          # conversion for effective_date [type = org.joda.time.DateTime]
          if !@effective_date.nil?
            @effective_date =  (@effective_date.kind_of? Time) ? DateTime.parse(@effective_date.to_s) : @effective_date
            @effective_date = Java::org.joda.time.DateTime.new(@effective_date.to_s, Java::org.joda.time.DateTimeZone::UTC)
          end

          # conversion for currencies [type = java.lang.Iterable]
          tmp = java.util.ArrayList.new
          (@currencies || []).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.Currency]
            m = Java::org.killbill.billing.catalog.api.Currency.value_of( m.to_s ) unless m.nil?
            tmp.add(m)
          end
          @currencies = tmp

          # conversion for units [type = java.lang.Iterable]
          tmp = java.util.ArrayList.new
          (@units || []).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.Unit]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @units = tmp

          # conversion for products [type = java.lang.Iterable]
          tmp = java.util.ArrayList.new
          (@products || []).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.Product]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @products = tmp

          # conversion for plans [type = java.lang.Iterable]
          tmp = java.util.ArrayList.new
          (@plans || []).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.Plan]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @plans = tmp

          # conversion for default_price_list [type = org.killbill.billing.catalog.api.PriceList]
          @default_price_list = @default_price_list.to_java unless @default_price_list.nil?

          # conversion for children_price_list [type = java.lang.Iterable]
          tmp = java.util.ArrayList.new
          (@children_price_list || []).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.PriceList]
            m = m.to_java unless m.nil?
            tmp.add(m)
          end
          @children_price_list = tmp

          # conversion for plan_rules [type = org.killbill.billing.catalog.api.rules.PlanRules]
          @plan_rules = @plan_rules.to_java unless @plan_rules.nil?
          self
        end

        def to_ruby(j_obj)
          # conversion for effective_date [type = org.joda.time.DateTime]
          @effective_date = j_obj.effective_date
          if !@effective_date.nil?
            fmt = Java::org.joda.time.format.ISODateTimeFormat.date_time_no_millis # See https://github.com/killbill/killbill-java-parser/issues/3
            str = fmt.print(@effective_date)
            @effective_date = DateTime.iso8601(str)
          end

          # conversion for currencies [type = java.lang.Iterable]
          @currencies = j_obj.currencies
          tmp = []
          (@currencies.nil? ? [] : @currencies.iterator).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.Currency]
            m = m.to_s.to_sym unless m.nil?
            tmp << m
          end
          @currencies = tmp

          # conversion for units [type = java.lang.Iterable]
          @units = j_obj.units
          tmp = []
          (@units.nil? ? [] : @units.iterator).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.Unit]
            m = Killbill::Plugin::Model::Unit.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @units = tmp

          # conversion for products [type = java.lang.Iterable]
          @products = j_obj.products
          tmp = []
          (@products.nil? ? [] : @products.iterator).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.Product]
            m = Killbill::Plugin::Model::Product.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @products = tmp

          # conversion for plans [type = java.lang.Iterable]
          @plans = j_obj.plans
          tmp = []
          (@plans.nil? ? [] : @plans.iterator).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.Plan]
            m = Killbill::Plugin::Model::Plan.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @plans = tmp

          # conversion for default_price_list [type = org.killbill.billing.catalog.api.PriceList]
          @default_price_list = j_obj.default_price_list
          @default_price_list = Killbill::Plugin::Model::PriceList.new.to_ruby(@default_price_list) unless @default_price_list.nil?

          # conversion for children_price_list [type = java.lang.Iterable]
          @children_price_list = j_obj.children_price_list
          tmp = []
          (@children_price_list.nil? ? [] : @children_price_list.iterator).each do |m|
            # conversion for m [type = org.killbill.billing.catalog.api.PriceList]
            m = Killbill::Plugin::Model::PriceList.new.to_ruby(m) unless m.nil?
            tmp << m
          end
          @children_price_list = tmp

          # conversion for plan_rules [type = org.killbill.billing.catalog.api.rules.PlanRules]
          @plan_rules = j_obj.plan_rules
          @plan_rules = Killbill::Plugin::Model::PlanRules.new.to_ruby(@plan_rules) unless @plan_rules.nil?
          self
        end

      end
    end
  end
end
