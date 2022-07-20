class CreateFishings < ActiveRecord::Migration[6.0]
  def change
    create_table :fishings do |t|
      t.date       :get_date, null: false
      t.string     :fish_name, null: false
      t.integer    :get_number, null: false
      t.string     :size, null: false
      t.string     :weight, null: false
      t.string     :style, null: false
      t.text       :explain, null: false
      t.integer    :wether_id, null: false
      t.integer :prefecture_id, null: false, foreign_key: true
      t.string     :area
      t.float      :lat, null: false
      t.float      :lng, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
