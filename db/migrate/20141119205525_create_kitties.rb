class CreateKitties < ActiveRecord::Migration
  def change
    create_table :kitties do |t|
      t.string :title

      t.timestamps
    end
  end
end
