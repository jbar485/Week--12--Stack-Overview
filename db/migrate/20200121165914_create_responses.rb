class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.string :author
      t.string :answer

      t.timestamps
    end
  end
end
