class CreateQualifications < ActiveRecord::Migration[5.1]
  def change
    create_table :qualifications do |t|
      t.references  :school,    null: false, index: true, foreign_key: true
      t.integer     :user,      null: false
      t.integer     :type,  null: false
      t.integer     :value,  null: false
      t.string      :comment,    null: false
      t.timestamps
    end
  end
end
