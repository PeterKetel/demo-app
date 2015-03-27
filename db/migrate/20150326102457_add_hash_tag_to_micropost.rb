class AddHashTagToMicropost < ActiveRecord::Migration
  def change
    add_column :microposts, :hash_tag, :string, :null => true, :limit => 12
  end
end
