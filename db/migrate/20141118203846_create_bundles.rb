class CreateBundles < ActiveRecord::Migration
  def change
    create_table :bundles do |t|
      t.string :name

      t.timestamps
    end
  end
end
