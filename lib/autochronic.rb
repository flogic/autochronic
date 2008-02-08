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
  end
end
