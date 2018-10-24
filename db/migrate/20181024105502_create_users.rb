class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      has_many :posts
      t.string :name
      t.string :email
      t.boolean :is_admin
      t.timestamps
    end
  end
end
