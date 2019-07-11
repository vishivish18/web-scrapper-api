class CreateDumps < ActiveRecord::Migration[5.2]
  def change
    create_table :dumps do |t|
      t.string :url
      t.string :tagtype
      t.string :content

      t.timestamps
    end
  end
end
