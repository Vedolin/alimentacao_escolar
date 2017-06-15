class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.belongs_to :school, foreign_key: true
      t.belongs_to :kind, foreign_key: true
      t.belongs_to :age, foreign_key: true
      t.date :scheduled_to
      t.text :planned
      t.text :served

      t.timestamps
    end
  end
end
