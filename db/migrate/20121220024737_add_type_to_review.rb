class AddTypeToReview < ActiveRecord::Migration
  def change
  	add_column :reviews, :kind, :string, :default => "positive"
  end
end
