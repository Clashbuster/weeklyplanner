class Account < ApplicationRecord
    #  attr_accessor :password, :password_confirmation
    
        has_secure_password
        has_many :plans
        has_many :account_rolls
        has_many :account_groups
        has_many :rolls, through: :account_rolls
        has_many :groups, through: :account_groups
        validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
        # validates :password, :confirmation => true #password_confirmation attr
        # validates_confirmation_of :password
        # has_secure_password
    
    # attr_accessible :password, :username, :password_confirmation

    # before_save :encrypt_password
    # after_save :clear_password

        # def encrypt_password
        # if password.present?
        #     self.salt = BCrypt::Engine.generate_salt
        #     self.password = BCrypt::Engine.hash_secret(password, salt)
        #     end
        # end

        # def clear_password
        # self.password = nil
        # end

        # def self.authenticate(username, password)
        #     user = find_by_username(username)
        #     if user && user.password == BCrypt::Engine.hash_secret(password, user.salt)
        #       user
        #     else
        #       nil
        #     end
        #   end

end
