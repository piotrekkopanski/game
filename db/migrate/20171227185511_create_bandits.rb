class CreateBandits < ActiveRecord::Migration[5.1]
  def change
    create_table :bandits do |t|
      t.string :name

      t.timestamps
    end
  end
end
