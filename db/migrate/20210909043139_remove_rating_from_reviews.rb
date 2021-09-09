class RemoveRatingFromReviews < ActiveRecord::Migration[6.1]
  def change
    remove_column :reviews, :rating, :float
  end
end
