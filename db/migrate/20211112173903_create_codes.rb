class CreateCodes < ActiveRecord::Migration[6.1]
  def change
    create_table :codes do |t|
      t.text :department
      t.text :municipality
      t.text :postal_code
      t.text :neighbourhood

      t.timestamps
    end
  end
end
