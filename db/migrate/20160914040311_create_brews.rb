class CreateBrews < ActiveRecord::Migration[5.0]
  def change
    create_table :brews do |t|
      t.string :date
      t.string :kind

      t.timestamps
    end
  end
end
