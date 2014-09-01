class Video < ActiveRecord::Base
  # title: string
  # description : text
  # small_cover_url : string
  # large_cover_url : string
  validates :title, presence: true
  validates :description, presence: true
  belongs_to :category

  def self.search_by_title(search_term)
    return [] if search_term.blank?
    search = "%#{search_term}%"
    where("title LIKE ?", search).order(created_at: :asc)
  end
end
