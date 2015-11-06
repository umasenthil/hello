class CreateHelloworlds < ActiveRecord::Migration
  def change
    create_table :helloworlds do |t|
	  t.string :language
	  t.string :greeting

      t.timestamps
    end
  end
end
