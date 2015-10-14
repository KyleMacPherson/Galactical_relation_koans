class CreatePlanetsAsteroids < ActiveRecord::Migration
  def change
    create_table :planets_asteroids do |t|
      t.references :planet
      t.references :asteroid
    end
    add_index :planets_asteroids, [:restaurant_id, :user_id]
    add_index :planets_asteroids, :asteroids_id
  end
end
