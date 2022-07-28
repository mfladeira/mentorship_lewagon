class Service < ApplicationRecord
  SPECIALTIES = ["Front-end", "Back-end", "Data scientist", "Product manager", "Devops engineer", "Data engineer", "Software engineer"  ]

  belongs_to :user
  has_many :orders
end
