class UpdateTables < ActiveRecord::Migration[5.0]
    def change
      change_table :passengers do |t|
        t.integer :ride_id
      end

      change_table :taxis do |t|
        t.integer :ride_id
      end

      change_table :rides do |t|
        t.integer :passenger_id
        t.integer :taxi_id
      end


    end
  end
  