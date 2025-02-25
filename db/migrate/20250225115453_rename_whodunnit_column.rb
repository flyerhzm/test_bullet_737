class RenameWhodunnitColumn < ActiveRecord::Migration[8.0]
  def change
    rename_column :comment_versions, :add_whodunnit, :whodunnit
  end
end
