class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :teaser
      t.string :description
      t.integer :year
      t.string :tech_stack
      t.string :demo_url
      t.string :git_url
      t.string :video_url
      t.string :image_url
      t.integer :claps

      t.timestamps
    end
  end
end
