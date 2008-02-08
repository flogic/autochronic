require File.dirname(__FILE__) + '/spec_helper'
require 'autochronic'
require 'activerecord'

setup_rails_database

class SpaceCowboy < ActiveRecord::Base
end

describe SpaceCowboy do
  before :each do
    @toker = SpaceCowboy.new
  end
  
  describe "'some_date' field" do
    it 'should accept a date object' do
      date = Date.civil(2008, 2, 7)
      date_input = date
      @toker.some_date = date_input
      @toker.some_date.should == date
    end
    
    it 'should accept a date string'
    it 'should accept a natural language date string'
    it 'should be nil on unusable input'
  end
end
