class ShowDateInEuropeanFormat < ActiveRecord::Migration
  def up
    self.connection.execute %Q(CREATE OR REPLACE VIEW date_in_European_Format
    SELECT substr(created_at,9,2)||'-'||substr(created_at,6,2)||'-'||substr(created_at,1,4) as "customer since",
          user_id as "customer number",
          name as "customer name"
    FROM USERS;
    )
  end
end
