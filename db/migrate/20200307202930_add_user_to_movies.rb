class AddUserToMovies < ActiveRecord::Migration[6.0]
  def change
    add_reference :movies, :user, null: false, default: 0
  end
end
