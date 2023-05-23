class Project < ApplicationRecord
  ransack_alias :full_search, :name_or_description

  def self.ransackable_attributes(_auth_object = nil)
    %w[name description full_search]
  end

  def self.ransackable_associations(_auth_object = nil)
    []
  end
end
