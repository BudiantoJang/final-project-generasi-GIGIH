class Customer < ApplicationRecord
    has_many :orders

    #presence = can't be blank
    #uniqueness = can't have duplicate values
    #format = determining valid email formatting
    validates:name, presence: true
    validates:email, {presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } }
end
