# frozen_string_literal: true

class Contact < ApplicationRecord
  enum gender: { male: "male", female: "female" }
  enum ration_type: { yellow: "yellow", pink: "pink", blue: "blue", white: "white" }
  enum tracking_type: { international_passenger: "international_passenger", domestic_passenger: "domestic_passenger", other: "other" }

  belongs_to :panchayat
  has_many :non_medical_reqs
  has_many :medical_reqs

  has_many :calls
  has_many :callees, through: :calls, source: :user

  belongs_to :user

  def self.to_csv
    attributes = %w{name phone house_name ward panchayat to_pay card_color family_members non_medical_needs medical_needs}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.find_each do |contact|
        csv << [
          contact.name,
          contact.phone,
          contact.house_name,
          contact.ward,
          contact.panchayat.name,
          contact.willing_to_pay ? "Yes" : "No",
          contact.ration_type,
          contact.number_of_family_members,
          contact.non_medical_reqs.pluck(:requirement_type, :other_needs).map { |req| "Need #{req[0]} (#{req[1]})" }.join(", "),
          contact.medical_reqs.pluck(:requirement_type, :other_needs).map { |req| "Need #{req[0]} (#{req[1]})" }.join(", ")
        ]
      end
    end
  end

  def self.to_non_medical_csv
    attributes = %w{name phone house_name ward panchayat to_pay card_color family_members non_medical_needs}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.find_each do |contact|
        csv << [
          contact.name,
          contact.phone,
          contact.house_name,
          contact.ward,
          contact.panchayat.name,
          contact.willing_to_pay ? "Yes" : "No",
          contact.ration_type,
          contact.number_of_family_members,
          contact.non_medical_reqs.pluck(:requirement_type, :other_needs).map { |req| "Need #{req[0]} (#{req[1]})" }.join(", "),
        ]
      end
    end
  end

  def self.to_medical_csv
    attributes = %w{name phone house_name ward panchayat to_pay card_color family_members medical_needs}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.find_each do |contact|
        csv << [
          contact.name,
          contact.phone,
          contact.house_name,
          contact.ward,
          contact.panchayat.name,
          contact.willing_to_pay ? "Yes" : "No",
          contact.ration_type,
          contact.number_of_family_members,
          contact.medical_reqs.pluck(:requirement_type, :other_needs).map { |req| "#{req[0]} Medicine (#{req[1]})" }.join(", "),
        ]
      end
    end
  end
end
