class CompanySection
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Globalize
  include Mongoid::Slug
  include Mongoid::Reorder
  
  belongs_to :company

  has_many :company_section_folders

  translates do
    field :title
    field :description
  end

  slug :title

  validates_presence_of :title, :description

end
