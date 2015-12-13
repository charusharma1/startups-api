class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :name
      t.string :location
      t.string :job_openings
      t.string :integer

      t.timestamps null: true
    end
  end
end
