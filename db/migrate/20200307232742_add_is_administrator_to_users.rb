class AddIsAdministratorToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :is_administrator, :boolean, default: false
  end
end
