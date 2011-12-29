require 'rubygems'
require 'composite_primary_keys'
class CrmRedemptionList < ActiveRecord::Base
  set_table_name 'crm_redemption_list'
  set_primary_keys :coy_id, :line_num
  
  has_and_belongs_to_many :crm_redemption_locations
  belongs_to :crm_product_lists
  
end
