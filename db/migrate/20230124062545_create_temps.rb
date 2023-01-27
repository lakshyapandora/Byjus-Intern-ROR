class CreateTemps < ActiveRecord::Migration[5.2]
  def change
    create_table :temps do |t|
      t.jsonb :body
      t.integer :article_id
      t.string :title
      t.timestamps
    end
  end
end
