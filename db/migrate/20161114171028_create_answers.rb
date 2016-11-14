class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.text :body, null: false
      t.integer :question_id
      t.integer :user_id
      t.boolean :best_answer

      t.timestamps(null: false)
    end
  end
end
