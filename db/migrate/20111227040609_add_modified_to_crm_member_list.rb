class AddModifiedToCrmMemberList < ActiveRecord::Migration
  def change
    add_column :crm_member_list, :modified_on, :timestamp
  end
  
  
end
