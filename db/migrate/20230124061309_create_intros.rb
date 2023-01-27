class CreateIntros < ActiveRecord::Migration[5.2]
  def change
    create_table :intros do |t|
      t.string :name 
      t.timestamps
    end
  end
end
