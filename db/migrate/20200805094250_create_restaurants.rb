# frozen_string_literal: true

class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :phone_number
      t.string :category
      t.integer :stars

      t.timestamps
    end
  end
end
