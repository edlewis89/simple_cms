class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :page
      t.string "name"
     
      t.integer "position"
      t.boolean "visibe", :default => false
      t.string "content_type"
      t.text "content"

      t.timestamps
    end
    add_index("sections", "page_id")
  end 
  def self.down
    drop_table :pages
  end
end
