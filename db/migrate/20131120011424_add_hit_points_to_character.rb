class AddHitPointsToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :hit_points, :integer
  end
end
