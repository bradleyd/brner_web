class ChangeStringToBlobOnMesssagesPartBody < ActiveRecord::Migration
  def change
    change_column :message_parts, :body, :blob
  end
end
