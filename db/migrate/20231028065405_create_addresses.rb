class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string     :postcode,      null: false
      t.integer    :prefecture_id, null: false
      t.string     :city,          null: false
      t.string     :block,         null: false
      t.string     :building
      t.string     :phone,         null: false
      t.references :order,         null: false, foreing_key: true
      t.timestamps
    end
  end
end