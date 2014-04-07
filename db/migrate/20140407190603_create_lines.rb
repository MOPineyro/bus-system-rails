class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.column :color, :string

    end
  end
end
