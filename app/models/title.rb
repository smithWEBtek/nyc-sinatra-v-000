class Title < ActiveRecord::Base
  has_many :figure_titles
  has_many :figures, through: :figure_titles

  def slug
    self.name.gsub(' ', '-').downcase
  end

  def self.find_by_slug(slug)
    self.all.detect{ |obj| obj.slug == slug  }
  end
end
