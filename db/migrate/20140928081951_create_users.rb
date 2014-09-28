class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :mobile
      t.string :email
      t.string :encrpted_password
      t.string :role

      t.timestamps
    end
  end
end
