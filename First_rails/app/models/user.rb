class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    
    def initialize(name, email)
      @name = name
      @email = email
    end
end