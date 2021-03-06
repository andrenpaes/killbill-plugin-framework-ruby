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

      java_package 'org.killbill.billing.usage.api'
      class RolledUpUnit

        include org.killbill.billing.usage.api.RolledUpUnit

        attr_accessor :unit_type, :amount

        def initialize()
        end

        def to_java()
          # conversion for unit_type [type = java.lang.String]
          @unit_type = @unit_type.to_s unless @unit_type.nil?

          # conversion for amount [type = java.lang.Long]
          @amount = @amount
          self
        end

        def to_ruby(j_obj)
          # conversion for unit_type [type = java.lang.String]
          @unit_type = j_obj.unit_type

          # conversion for amount [type = java.lang.Long]
          @amount = j_obj.amount
          self
        end

      end
    end
  end
end
