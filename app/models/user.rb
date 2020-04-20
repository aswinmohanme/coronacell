# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { phone_caller: "phone_caller", district_admin: "district_admin", doctor: "doctor", panchayat_admin: "panchayat_admin", admin: "admin" }
  after_initialize :set_default_role, if: :new_record?

  has_many :contacts

  def set_default_role
    self.role ||= :phone_caller
  end

  belongs_to :panchayat, optional: true

  has_many :calls
  has_many :called, through: :calls, source: :contact

  def is_admin?
    ["district_admin", "panchayat_admin", "admin"].include?(role)
  end
end
