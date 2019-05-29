class AddRatingChangesToResult < ActiveRecord::Migration[5.1]
  def change
    add_column :rating_history_events, :result_id, :integer, after: :rating_id

    create_table :rating_changes do |t|
      t.integer :result_id, null: false
      t.integer :player_id, null: false
      t.integer :original_rating, null: false
      t.integer :value, null: false

      t.timestamps
    end
  end
end
