class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.string :title
      t.string :punchline
      t.string :format

      t.timestamps
    end
  end
end
