ActiveRecord::Schema.define(:version => 0) do
  create_table :space_cowboys, :force => true do |t|
    t.date :some_date
  end
end
