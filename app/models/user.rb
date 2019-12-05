class User < ApplicationRecord
    validates :name, presence: true, length: {maximum: 15}
    validates :email, presence: true, format: {with:VALID_EMAIL_REGEX}
    validates :password, length: {minimum: 8, maximum: 32 }, format: {with:VALID_PASSWORED_REGEX}
    VALID_PASSWORED_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/
    
    has_secure_password
    
end
