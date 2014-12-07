class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :user
      t.string :partner
      t.string :relation

      t.timestamps
    end
  end
end
