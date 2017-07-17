class AddColumnPorToBlog < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :por, :string
  end
end
