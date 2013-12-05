class CreateJokeCollections < ActiveRecord::Migration
  def change
    create_table :joke_collections do |t|
      t.integer :joke_id
      t.integer :user_id

      t.timestamps
    end
  end
end
