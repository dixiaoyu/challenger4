class CreateCrmMemberLists < ActiveRecord::Migration
  def change
    create_table "crm_member_list", :id => false, :force => true do |t|
      t.string   "coy_id",             :limit => 3,                                 :default => "",                    :null => false
      t.string   "mbr_id",             :limit => 15,                                :default => "",                    :null => false
      t.string   "mbr_title",          :limit => 5,                                 :default => "",                    :null => false
      t.string   "first_name",         :limit => 40,                                :default => "",                    :null => false
      t.string   "last_name",          :limit => 40,                                :default => "",                    :null => false
      t.string   "mbr_gender",         :limit => 1,                                 :default => "",                    :null => false
      t.datetime "birth_date",                                                      :default => '1900-01-01 00:00:00', :null => false
      t.string   "marital_status",     :limit => 1,                                 :default => "",                    :null => false
      t.string   "nationality_id",     :limit => 2,                                 :default => "",                    :null => false
      t.string   "card_name",          :limit => 30,                                :default => "",                    :null => false
      t.string   "vehicle_id",         :limit => 10,                                :default => "",                    :null => false
      t.string   "email_addr",         :limit => 60,                                :default => "",                    :null => false
      t.string   "tel_code",           :limit => 20,                                :default => "",                    :null => false
      t.string   "mobile_phone",       :limit => 20,                                :default => "",                    :null => false
      t.string   "occupation_code",    :limit => 30,                                :default => "",                    :null => false
      t.string   "annual_income",      :limit => 2,                                 :default => "",                    :null => false
      t.string   "education_level",    :limit => 10,                                :default => "",                    :null => false
      t.string   "mbr_pwd",            :limit => 32,                                :default => "",                    :null => false
      t.datetime "pwd_changed",                                                     :default => '1900-01-01 00:00:00', :null => false
      t.datetime "last_login",                                                      :default => '1900-01-01 00:00:00', :null => false
      t.string   "mbr_addr",           :limit => 10,                                :default => "",                    :null => false
      t.string   "delv_addr",          :limit => 10,                                :default => "",                    :null => false
      t.string   "send_info",          :limit => 1,                                 :default => "",                    :null => false
      t.string   "send_type",          :limit => 10,                                :default => "",                    :null => false
      t.string   "mbr_type",           :limit => 3,                                 :default => "",                    :null => false
      t.integer  "status_level",       :limit => 2,                                 :default => 0,                     :null => false
      t.datetime "join_date",                                                       :default => '1900-01-01 00:00:00', :null => false
      t.datetime "expiry_date",                                                     :default => '1900-01-01 00:00:00', :null => false
      t.datetime "last_renewal",                                                    :default => '1900-01-01 00:00:00', :null => false
      t.decimal  "points_accumulated",               :precision => 15, :scale => 2, :default => 0.0,                   :null => false
      t.decimal  "points_reserved",                  :precision => 15, :scale => 2, :default => 0.0,                   :null => false
      t.decimal  "points_redeemed",                  :precision => 15, :scale => 2, :default => 0.0,                   :null => false
      t.decimal  "mbr_savings",                      :precision => 15, :scale => 2, :default => 0.0,                   :null => false
      t.string   "created_by",         :limit => 15,                                :default => "",                    :null => false
      t.string   "modified_by",        :limit => 15,                                :default => "",                    :null => false
    end
  end
end
