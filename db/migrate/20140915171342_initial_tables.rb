class InitialTables < ActiveRecord::Migration
  def change

    create_table :spaces do |t|
      t.belongs_to :user
      t.string :address
      t.integer :day_fee
      t.text :description
    end

    create_table :users do |t|
      t.string :full_name
    end

    create_table :relationships do |t|
      t.belongs_to :space
      t.belongs_to :user
      t.date :start_date
      t.date :end_date
      t.integer :number_of_days
    end


  end
end




