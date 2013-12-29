class ChangeStringToBlobOnMesssagesData < ActiveRecord::Migration
  def change
    change_column :messages, :data, :blob
  end
end
