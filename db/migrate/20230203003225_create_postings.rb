class CreatePostings < ActiveRecord::Migration[7.0]
  def change
    create_table :postings do |t|
      t.string :title
      t.string :company
      t.string :salary
      t.string :location
      t.timestamps
    end
  end
end
