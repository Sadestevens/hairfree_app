class CreateUsers < ActiveRecord::Migration
  def change
    create_table   :users do |t|
      t.references :accounts
      t.references :profiles
      t.references :events
      t.string     :email, null: false, unique: true
      t.string     :password_digest, null: false
      t.timestamps
      t.references :profile
      end
  end
end
