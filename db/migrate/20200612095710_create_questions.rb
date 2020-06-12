class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.integer :views, null: false, default: 0
      t.references :user, null: false
      t.json :tags
      
      t.timestamps
    end
  end
end
