class CreatePicks < ActiveRecord::Migration[5.2]
  def change
    create_table :picks do |t|
      t.string :who_goes_first

      t.timestamps
    end
  end
end
