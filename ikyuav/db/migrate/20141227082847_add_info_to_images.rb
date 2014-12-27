class AddInfoToImages < ActiveRecord::Migration
  def change
    add_column :images, :info, :string
  end
end
