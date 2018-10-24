class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      belongs_to :user, index: true
      belongs_to :post
      t.string :content
      t.timestamps
    end
  end
end
