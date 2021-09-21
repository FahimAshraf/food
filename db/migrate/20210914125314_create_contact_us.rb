class CreateContactUs < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_us do |t|
      t.string :customer_name
      t.string :customer_number
      t.string :customer_order
      t.string :customer_food
      t.integer :customer_food_quantity
      t.datetime :customer_date_time
      t.string :customer_adress
      t.string :customer_message

      t.timestamps
    end
  end
end
