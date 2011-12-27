class AddUpdatedToCrmMemberList < ActiveRecord::Migration
  def change
    add_column :crm_member_list, :updated_on, :timestamp
  end
end
