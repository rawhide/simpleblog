class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :user, index: true
      t.string :title
      t.text   :body
      t.integer :pv, default: 0, null: false

      t.timestamps
    end
  end
end
