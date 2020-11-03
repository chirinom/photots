class Photo < ApplicationRecord

    CATEGORIES = ['Nature', 'Water Sports','Places','Other'].freeze
    has_one_attached :photo
    belongs_to :user

    pg_search_scope :search_by_category,
    against: [:category],
    using: {
      tsearch: { prefix: true }
    }
end
