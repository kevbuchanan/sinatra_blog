class CreateTables < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.timestamps
    end

    create_table :tags do |t|
      t.string :title
      t.timestamps
    end

    create_table :poststags do |t|
      t.references :post
      t.references :tag
      t.timestamps
    end
  end
end
