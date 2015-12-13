class RemoveIntegerFromStartups < ActiveRecord::Migration
  def change
    remove_column :startups, :integer, :string

  end
end
