class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.references :commentable, polymorphic: true, index: true
      t.integer :user_id

      t.timestamps(null: false)
    end
  end
end
