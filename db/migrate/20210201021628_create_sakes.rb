class CreateSakes < ActiveRecord::Migration[6.0]
  def change
    create_table :sakes do |t|
      t.string  :name          ,null:false
      t.text    :text          ,null:false
      t.string  :maker
      t.integer :prefecture_id ,default:0
      t.string  :area
      t.string  :category
      t.timestamps
    end
  end
end
