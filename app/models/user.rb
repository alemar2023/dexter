class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable


  PROFILE_TITLE = [
    'Admin Manager',
    'Web Designer',
    'Developer',
    'System Manager',
    'Project Manager',
    'C.E.O. Director',
    'Test-User'
  ].freeze

  def name
    "#{first_name} #{last_name}".strip
  end
  def address
    "#{city} ,#{state} ,#{country} ,#{pincode}"
  end
  def self.ransackable_attributes(auth_object = nil)
    ['country', 'city']
  end




end
