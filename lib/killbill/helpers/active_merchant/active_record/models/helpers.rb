module Killbill
  module Plugin
    module ActiveMerchant
      module Helpers

        # In our profiling, we noticed that ActiveRecord::Sanitization::ClassMethods.sanitize_sql was taking
        # about 50% of where queries calls time, mainly because of the String#gsub magic in ActiveRecord::Sanitization::ClassMethods.replace_bind_variables.
        # We don't want to issue raw SQL because we still want to be able to support multiple back-ends (at least SQLite and MySQL),
        # so we cache the quoted values (this should also give us SQL injection protection).
        # The gain is not 50% but more around 30% due to the Mutex overhead in the cache
        def build_quotes_cache(max_size=1000)
          # See ::ActiveRecord::Sanitization::ClassMethods.quote_bound_value
          quote_bound_value_proc = Proc.new { |value|
            c = connection

            if value.respond_to?(:map) && !value.acts_like?(:string)
              if value.respond_to?(:empty?) && value.empty?
                c.quote(nil)
              else
                value.map { |v| c.quote(v) }.join(',')
              end
            else
              c.quote(value)
            end
          }

          Killbill::Plugin::ActiveMerchant::Utils::BoundedLRUCache.new(quote_bound_value_proc, max_size)
        end

        # Useful helper to extract params from AM response objects, e.g. extract(response, 'card', 'address_country')
        def extract(response, key1, key2=nil, key3=nil)
          return nil if response.nil? || response.params.nil?
          level1 = response.params[key1]

          if level1.nil? or (key2.nil? and key3.nil?)
            return level1
          end
          level2 = level1[key2]

          if level2.nil? or key3.nil?
            return level2
          else
            return level2[key3]
          end
        end
      end
    end
  end
end
