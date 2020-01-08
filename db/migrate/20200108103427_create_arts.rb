class CreateArts < ActiveRecord::Migration[5.2]
  def change
    create_table :arts do |t|
      t.string :Titre
      t.text :Description
      t.string :Date
      t.string :Dimensions
      t.string :Œuvre
      t.string :Auteur

      t.timestamps
    end
  end
end
