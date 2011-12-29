class CreateCrmRedemptionLists < ActiveRecord::Migration
  def change
    create_table "crm_redemption_list", :id => false, :force => true do |t|
      t.string   "coy_id",          :limit => 3,                                 :default => "",                    :null => false
      t.integer  "line_num",        :limit => 2,                                 :default => 0,                     :null => false
      t.string   "item_id",         :limit => 15,                                :default => "",                    :null => false
      t.decimal  "points_required",               :precision => 15, :scale => 2, :default => 0.0,                   :null => false
      t.datetime "eff_from",                                                     :default => '1900-01-01 00:00:00', :null => false
      t.datetime "eff_to",                                                       :default => '1900-01-01 00:00:00', :null => false
      t.string   "created_by",      :limit => 15,                                :default => "",                    :null => false
      t.datetime "created_on",                                                                                      :null => false
      t.string   "modified_by",     :limit => 15,                                :default => "",                    :null => false
      t.datetime "modified_on",                                                  :default => '1900-01-01 00:00:00', :null => false
      t.datetime "updated_on",                                                                                      :null => false
    end
  end
end
