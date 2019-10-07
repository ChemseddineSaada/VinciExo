class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :last_name
      t.string :first_name
      t.date :birthday
      t.string :job
      t.string :email
      t.integer :number
    end
  end
end
