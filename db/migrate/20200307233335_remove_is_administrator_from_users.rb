class RemoveIsAdministratorFromUsers < ActiveRecord::Migration[6.0]
  def change

    remove_column :users, :is_administrator, :boolean
  end
end
