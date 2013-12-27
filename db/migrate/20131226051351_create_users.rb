class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email_address
      t.string :im_address
      t.string :mailbox_number
      t.timestamps
    end
  end
end
