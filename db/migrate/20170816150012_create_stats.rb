class CreateStats < ActiveRecord::Migration[5.1]
  def change
    create_table :stats do |t|
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true
      t.float :score

      t.timestamps
    end
  end
end
