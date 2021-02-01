class CreateSakes < ActiveRecord::Migration[6.0]
  def change
    create_table :sakes do |t|
      t.string     :name,null:false
      t.string     :category
      t.integer    :total_id,default: 0
      t.integer    :taste_id,default: 0
      t.integer    :sourness_id,default: 0
      t.integer    :easy_id,default: 0
      t.string     :place
      t.text       :impression
      t.string     :maker
      t.integer    :area_id,default: 0
      t.text       :text
      t.references :user, null:false,foreign_key:true
      t.timestamps
    end
  end
end

