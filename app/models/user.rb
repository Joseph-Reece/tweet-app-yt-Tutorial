=begin 
this model is for the user table in the database
 it has the following attributes:
 email:string
 password_digest:string

 password:string virtual attribute
 password_confirmation:string virtual attribute
=end

class User < ApplicationRecord
    has_secure_password

    validates :email, 
            presence: true, 
            uniqueness: true, 
            format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "Invalid email format" }

end
