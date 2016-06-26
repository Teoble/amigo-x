class CreateMurals < ActiveRecord::Migration
  def change
    create_table :murals do |t|
      t.text :mensagem

      t.timestamps null: false
    end
  end
end
