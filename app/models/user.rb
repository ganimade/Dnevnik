class User < ActiveRecord::Base

  has_and_belongs_to_many :roles
  has_and_belongs_to_many :schools
  belongs_to :city

  validates_presence_of     :email,                       :if => :email_required?
  validates_format_of       :email, :with  => /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i , :if => :email_required?
  validates_uniqueness_of   :email,                      :if => :email_required?

  validates_length_of       :password,    :within => 6..20, :on => :create
  validates_format_of       :mobile, :with => /7\d{10}/,  :if => :mobile_required?
  validates_uniqueness_of   :mobile,                      :if => :mobile_required?



  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable    :registerable,  , :validatable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :mobile, :email, :password, :password_confirmation, :remember_me

  def self.find_for_database_authentication(conditions)
     value = conditions[authentication_keys.first]
     where(["mobile = :value OR email = :value", { :value => value }]).first
  end

  # поле для таблиц представление ссылки
  def to_label
    "#{email}"
  end

  def role?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end

  protected

  def email_required?
    self.mobile.blank?
  end

  def mobile_required?
    self.email.blank?
  end

end
