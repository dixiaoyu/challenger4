# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111227041305) do

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
    t.string   "mbr_pwd",            :limit => 40,                                :default => "",                    :null => false
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
    t.datetime "created_on"
    t.datetime "modified_on"
    t.datetime "updated_on"
  end

  create_table "crm_member_transaction", :id => false, :force => true do |t|
    t.string   "coy_id",         :limit => 3,                                 :default => "",  :null => false
    t.string   "mbr_id",         :limit => 15,                                :default => "",  :null => false
    t.integer  "line_num",       :limit => 2,                                 :default => 0,   :null => false
    t.string   "trans_type",     :limit => 2,                                 :default => "",  :null => false
    t.datetime "trans_date",                                                                   :null => false
    t.string   "trans_id",       :limit => 15,                                :default => "",  :null => false
    t.string   "loc_id",         :limit => 5,                                 :default => "",  :null => false
    t.string   "pos_id",         :limit => 2,                                 :default => "",  :null => false
    t.string   "item_id",        :limit => 15,                                :default => "",  :null => false
    t.string   "item_desc",      :limit => 60,                                :default => "",  :null => false
    t.decimal  "item_qty",                     :precision => 15, :scale => 2, :default => 0.0, :null => false
    t.decimal  "unit_price",                   :precision => 18, :scale => 8, :default => 0.0, :null => false
    t.decimal  "disc_percent",                 :precision => 6,  :scale => 2, :default => 0.0, :null => false
    t.decimal  "trans_points",                 :precision => 15, :scale => 2, :default => 0.0, :null => false
    t.string   "salesperson_id", :limit => 15,                                :default => "",  :null => false
    t.string   "created_by",     :limit => 15,                                :default => "",  :null => false
    t.string   "modified_by",    :limit => 15,                                :default => "",  :null => false
  end

  add_index "crm_member_transaction", ["coy_id", "mbr_id", "trans_date", "item_id"], :name => "crm_member_transaction_idx2"
  add_index "crm_member_transaction", ["coy_id", "trans_type", "mbr_id", "trans_date"], :name => "crm_member_transaction_idx1"

  create_table "crm_product_list", :id => false, :force => true do |t|
    t.string  "coy_id",       :limit => 3,                                 :default => "",  :null => false
    t.string  "item_id",      :limit => 15,                                :default => "",  :null => false
    t.string  "loc_id",       :limit => 5,                                 :default => "",  :null => false
    t.string  "item_desc",    :limit => 60,                                                 :null => false
    t.decimal "qty_on_hand",                :precision => 15, :scale => 2, :default => 0.0, :null => false
    t.decimal "qty_reserved",               :precision => 15, :scale => 2, :default => 0.0, :null => false
    t.string  "created_by",   :limit => 15,                                :default => "",  :null => false
    t.string  "modified_by",  :limit => 15,                                :default => "",  :null => false
  end

  add_index "crm_product_list", ["coy_id", "loc_id", "item_id"], :name => "crm_product_list_idx1"

  create_table "crm_redemption_list", :id => false, :force => true do |t|
    t.string   "coy_id",          :limit => 3,                                 :default => "",  :null => false
    t.integer  "line_num",        :limit => 2,                                 :default => 0,   :null => false
    t.string   "item_id",         :limit => 15,                                :default => "",  :null => false
    t.decimal  "points_required",               :precision => 15, :scale => 2, :default => 0.0, :null => false
    t.datetime "eff_from",                                                                      :null => false
    t.datetime "eff_to",                                                                        :null => false
    t.string   "created_by",      :limit => 15,                                :default => "",  :null => false
    t.string   "modified_by",     :limit => 15,                                :default => "",  :null => false
  end

  add_index "crm_redemption_list", ["coy_id", "item_id"], :name => "crm_redemption_list_idx1"

  create_table "crm_redemption_location", :id => false, :force => true do |t|
    t.string  "coy_id",       :limit => 3,                                 :default => "",  :null => false
    t.string  "item_id",      :limit => 15,                                :default => "",  :null => false
    t.string  "loc_id",       :limit => 5,                                 :default => "",  :null => false
    t.string  "item_desc",    :limit => 60,                                :default => "",  :null => false
    t.decimal "qty_on_hand",                :precision => 15, :scale => 2, :default => 0.0, :null => false
    t.decimal "qty_reserved",               :precision => 15, :scale => 2, :default => 0.0, :null => false
    t.string  "created_by",   :limit => 15,                                :default => "",  :null => false
    t.string  "modified_by",  :limit => 15,                                :default => "",  :null => false
  end

  add_index "crm_redemption_location", ["coy_id", "loc_id", "item_id"], :name => "crm_redemption_location_idx1"

  create_table "crm_redemption_reservation", :id => false, :force => true do |t|
    t.string   "coy_id",        :limit => 3,                                 :default => "",  :null => false
    t.string   "mbr_id",        :limit => 15,                                :default => "",  :null => false
    t.string   "item_id",       :limit => 15,                                :default => "",  :null => false
    t.string   "loc_id",        :limit => 5,                                 :default => "",  :null => false
    t.string   "item_desc",     :limit => 60,                                :default => "",  :null => false
    t.decimal  "qty_reserved",                :precision => 15, :scale => 2, :default => 0.0, :null => false
    t.datetime "date_reserved",                                                               :null => false
    t.datetime "valid_until",                                                                 :null => false
    t.integer  "status_level",  :limit => 2,                                 :default => 0,   :null => false
    t.string   "created_by",    :limit => 15,                                :default => "",  :null => false
    t.string   "modified_by",   :limit => 15,                                :default => "",  :null => false
  end

  add_index "crm_redemption_reservation", ["coy_id", "loc_id", "item_id"], :name => "crm_redemption_reservation_idx1"

end
