class User < ApplicationRecord
    validates :last_name, presence: true, format: { with: /\A[^0-9]+[a-zA-Z]\z/i, on: :create}
    validates :first_name, presence: true, format: { with: /\A[^0-9]+[a-zA-Z]\z/i, on: :create}
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, message: " invalide" }, uniqueness: {message: " déjà utilisé"}
    validates :number, inclusion: 0..10
end
