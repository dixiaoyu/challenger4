class AddCreatedToCrmMemberList < ActiveRecord::Migration
  def change
    add_column :crm_member_list, :created_on, :timestamp
  end
end
