class CreateMalts < ActiveRecord::Migration[5.0]
  def change
    create_table :malts do |t|
      t.string :kind
      t.string :amount

      t.timestamps
    end
  end
end
