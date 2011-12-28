require 'rubygems'
require 'composite_primary_keys'
require 'digest/MD5'
class CrmMemberList < ActiveRecord::Base
  set_table_name 'crm_member_list'
  set_primary_keys :coy_id, :mbr_id
  
  attr_accessor :password
  attr_accessible :mbr_id, :password, :password_confirmation, :birth_date, :pwd_changed,:last_login, :join_date ,:expiry_date, :last_renewal, :created_on,:modified_on      
  
  validates :mbr_id,  :presence => true,
                      :length   => { :within => 6..10 },                       
                      :uniqueness => { :case_sensitive => false }
                      
  validates :password, :presence     => true,
                       :confirmation => true,
                       :length       => { :within => 6..40 } 
                         
  before_save :encrypt_password    
  
  def has_password?(submitted_password)
    self.mbr_pwd == encrypt(submitted_password)
  end  
  
  def self.authenticate(mbr_id, submitted_password)
    member = find_by_mbr_id(mbr_id)
    return nil  if member.nil?
    return member if member.has_password?(submitted_password)
  end
  
  def self.authenticate_with_salt(mbr_id, cookie_salt)
    member = find_by_mbr_id(mbr_id)
    return nil if member.nil?
    return member if member.coy_id==cookie_salt
  end
  
  private
    
    def encrypt_password
      self.mbr_pwd = encrypt(password)
    end    
    
    def encrypt(string)
      secure_hash(string)
    end     
    
    def secure_hash(string)
      Digest::MD5.hexdigest(string)
    end 
  
  
end
