class CrmRedemptionLocation < ActiveRecord::Base
  set_table_name 'crm_redemption_location'
  set_primary_keys :coy_id, :item_id, :loc_id
  
  has_and_belongs_to_many :crm_redemption_lists
end
