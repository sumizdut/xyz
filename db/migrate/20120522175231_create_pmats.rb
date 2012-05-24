class CreatePmats < ActiveRecord::Migration
  def change
    create_table :pmats do |t|
      t.string :head
      t.string :meaning
      t.text :usage

      t.timestamps
    end
  end
end
