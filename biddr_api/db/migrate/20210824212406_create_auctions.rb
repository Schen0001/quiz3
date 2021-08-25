class CreateAuctions < ActiveRecord::Migration[6.1]
  def change
    create_table :auctions do |t|
      t.string :title
      t.string :description
      t.string :ends_at
      t.string :reserve_price
      t.timestamps
    end
  end
end
