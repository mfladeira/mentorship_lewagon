class Service < ApplicationRecord
  SPECIALTIES = ["Front-end", "Back-end", "Product-Manager", "Devops", "Data-Engineer", "Software-Engineer"  ]

  belongs_to :user
  has_many :orders
end
