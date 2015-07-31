class Pin < ActiveRecord::Migration
  def change
      create_table :pins do |t|
        t.string :title
        t.string :image_url
        t.string :comment
        t.references :user, index: true, foreign_key: true
    end
  end
end
