require 'activerecord'
require 'chronic'

class ActiveRecord::ConnectionAdapters::Column
  class << self
    def string_to_date(string)
      return string unless string.is_a?(String)
      return nil if string.empty?
      
      parsed = Chronic.parse(string)
      parsed and parsed.to_date
    end
    
    def string_to_time_with_chronic(string)
      result = string_to_time_without_chronic(string)
      return result if result
      
      Chronic.parse(string)
    end
    alias_method_chain :string_to_time, :chronic
  end
end
