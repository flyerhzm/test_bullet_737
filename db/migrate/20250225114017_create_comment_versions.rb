class CreateCommentVersions < ActiveRecord::Migration[8.0]
  def change
    create_table :comment_versions do |t|
      t.integer :post_id
      t.text :extra

      t.timestamps
    end
  end
end
