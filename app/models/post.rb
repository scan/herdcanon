class Post < ActiveRecord::Base
  belongs_to :user

  extend FriendlyId
  friendly_id :slug_candidates, use: [:slugged, :finders]

  scope :public, -> { where(:published, true) }

  valitates :user, presence: true
  validates :title, presence: true, length { minimum: 10, maximum: 180 }
  validates :published, inclusion: { in: [true, false] }

  def name
    title
  end

  private

  def slug_candidates
    [
      :name,
      [:name, :user]
    ]
  end
end
