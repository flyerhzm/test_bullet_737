class AddColumnsToCommentVersions < ActiveRecord::Migration[8.0]
  def change
    add_column :comment_versions, :add_whodunnit, :string
    add_column :comment_versions, :item_id, :integer
    add_column :comment_versions, :item_type, :string
    add_column :comment_versions, :event, :string
    add_column :comment_versions, :string, :string
    add_column :comment_versions, :object, :text
  end
end
