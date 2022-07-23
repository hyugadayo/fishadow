class CreateFishings < ActiveRecord::Migration[6.0]
  def change
    create_table :fishings do |t|
      t.date       :get_date, null: false
      t.string     :fish_name, null: false
      t.integer    :get_number, null: false
      t.string     :size, null: false
      t.string     :weight
      t.string     :style
      t.text       :explain
      t.integer    :wether_id
      t.float      :lat, null: false
      t.float      :lng, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
