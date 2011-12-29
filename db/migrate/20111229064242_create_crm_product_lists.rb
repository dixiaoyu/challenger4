class CreateCrmProductLists < ActiveRecord::Migration
  def change
    create_table "crm_product_list", :id => false, :force => true do |t|
      t.string   "coy_id",       :limit => 3,                                 :default => "",                    :null => false
      t.string   "item_id",      :limit => 15,                                :default => "",                    :null => false
      t.string   "loc_id",       :limit => 5,                                 :default => "",                    :null => false
      t.string   "item_desc",    :limit => 60,                                                                   :null => false
      t.decimal  "qty_on_hand",                :precision => 15, :scale => 2, :default => 0.0,                   :null => false
      t.decimal  "qty_reserved",               :precision => 15, :scale => 2, :default => 0.0,                   :null => false
      t.string   "created_by",   :limit => 15,                                :default => "",                    :null => false
      t.datetime "created_on",                                                                                   :null => false
      t.string   "modified_by",  :limit => 15,                                :default => "",                    :null => false
      t.datetime "modified_on",                                               :default => '1900-01-01 00:00:00', :null => false
      t.datetime "updated_on",                                                                                   :null => false
    end
  end
end
