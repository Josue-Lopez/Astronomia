class CreateAstros < ActiveRecord::Migration[5.0]
  def change
    create_table :astros do |t|
      t.string :nombre
      t.integer :tipo_id
      t.string :distancia
      t.text :descripcion
      t.date :fecha

      t.timestamps
    end
  end
end
