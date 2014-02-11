class CreateEkiselevas < ActiveRecord::Migration
  def change
    create_table :ekiselevas do |t|

      t.timestamps
    end
  end
end
