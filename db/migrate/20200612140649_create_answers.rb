class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :answer, null: false
      t.integer :upvotes, null: false, default: 0
      t.references :user, null: false
      t.references :question, null: false
      t.boolean :approved
      t.timestamps
    end
  end
end
