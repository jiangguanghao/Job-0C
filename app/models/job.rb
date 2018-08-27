class Job < ApplicationRecord
  validates :title, presence: true
  validates :wage_upper_bound, presence: true
  validates :wage_lower_bound, presence: true
  validates :wage_lower_bound, numericality: { greater_than: 0}
  scope :publicshed, -> { where(is_hidden: false) }
  scope :recent, -> { order('crated_at DESC')}
end
