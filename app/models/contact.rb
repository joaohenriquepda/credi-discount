# Model
class Contact < ApplicationRecord
  belongs_to :user

  enum contact_type: [:personal, :other]
end
