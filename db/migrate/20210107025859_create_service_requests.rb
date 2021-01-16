class CreateServiceRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :service_requests do |t|
      t.string :service_type
      t.string :pick_up_time
      t.string :pick_up_location
      t.references :dog
      t.references :user
      

      t.timestamps
    end
  end
end
