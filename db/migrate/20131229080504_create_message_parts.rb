class CreateMessageParts < ActiveRecord::Migration
  def change
    create_table :message_parts do |t|
      t.integer :message_id
      t.string :cid
      t.string :mime_type
      t.string :is_attachment
      t.string :filename
      t.string :charset
      t.string :body
      t.integer :size

      t.timestamps
    end
  end
end
