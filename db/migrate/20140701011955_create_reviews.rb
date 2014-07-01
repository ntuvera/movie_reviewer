class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.date :date
      t.integer :rating
      t.text :desc

      t.timestamps
    end
  end
end
