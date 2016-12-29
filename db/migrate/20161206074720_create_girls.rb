class CreateGirls < ActiveRecord::Migration[5.0]
  def change
    create_table :girls do |t|
    	t.string :name
    	t.integer :number
    	t.integer :age
    	t.string :area

      t.timestamps
    end
  end
end
