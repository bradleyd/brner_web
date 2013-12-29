class AddDesctructOnToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :destruct_on, :timestamp
    add_column :messages, :delivered_at, :timestamp
    add_column :messages, :viewed, :boolean, default: false
  end
end
