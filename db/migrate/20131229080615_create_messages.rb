class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :sender
      t.string :recipients
      t.string :subject
      t.string :data
      t.string :mime_type
      t.integer :size

      t.timestamps
    end
  end
end
