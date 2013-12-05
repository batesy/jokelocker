class AddCreatorIdToJokes < ActiveRecord::Migration
  def change
    add_column :jokes, :creator_id, :integer
  end
end
