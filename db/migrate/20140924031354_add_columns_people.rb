class AddColumnsPeople < ActiveRecord::Migration
  def up
    add_column :people, :email, :string
    add_column :people, :password_digest, :text
  end

  def down
  end
end
