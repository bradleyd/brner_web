class AddMtaTimeToEmails < ActiveRecord::Migration
  def change
    add_column :emails, :mta_time, :timestamp
  end
end
