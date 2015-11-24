class Admin < ActiveRecord::Base
  attr_accessor :password
  validates :password, confirmation: true
  before_save :encrypt_password

  validates_uniqueness_of :email, case_sensitive: false
  validates_presence_of :email
  validates :password, presence: true, on: :create
  validates :password_confirmation, presence: true, on: :create

  def encrypt_password
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  end

  def self.authenticate(email, password)
    admin = Admin.where(email: email).first
    if admin && admin.password_hash == BCrypt::Engine.hash_secret(password, admin.password_salt)
      admin
    else
      nil
    end
  end
end
