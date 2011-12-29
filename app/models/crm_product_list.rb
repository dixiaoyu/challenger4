class CrmProductList < ActiveRecord::Base
  set_table_name 'crm_product_list'
  set_primary_keys :coy_id, :item_id, :loc_id
  
  has_many :crm_redemption_lists
end
