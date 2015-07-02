class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.references :guide
      t.references :topic
      t.timestamps
    end
  end
end
