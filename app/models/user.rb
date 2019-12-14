class User < ApplicationRecord
    validates :name, presence: true, length: {maximum: 15}
    VALID_PASSWORED_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/
    validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
    validates :password, length: {minimum: 8, maximum: 32 }, format: {with: VALID_PASSWORED_REGEX}
    
    has_secure_password
    
    has_many :topics
    has_many :favorites
    has_many :favorite_topics, through: :favorites,source: 'topic'
end
