class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      belongs_to :user, index:true
      belongs_to :category
      has_many :comments
      t.string :title
      t.string :content
      t.integer :like_counter
      t.timestamps
    end
  end
end
