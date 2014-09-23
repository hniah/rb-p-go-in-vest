class User < ActiveRecord::Base
  extend Enumerize

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates_presence_of :username, :gender, :birthday

  attr_accessor :agree_terms_and_conditions

  enumerize :gender, in: [:male, :female], default: :male
end
