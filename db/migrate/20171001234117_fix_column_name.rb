class FixColumnName < ActiveRecord::Migration[5.1]
  def change
  		rename_column :surveys, :type, :user_type
  end
end
