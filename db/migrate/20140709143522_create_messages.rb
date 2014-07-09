class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :body, null: false, default: nil
      t.timestamps
    end
  end
end
