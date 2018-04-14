class SearchTerm < ApplicationRecord
  validates :value, presence: true

  def self.value_count
    group(:value).order(value: :asc).count
  end

  def self.sort_list(sort_order)
    if sort_order == 'title desc' || sort_order.blank?
      group(:value).order(value: :desc).count
    elsif sort_order == 'title asc'
      group(:value).order(value: :asc).count
    elsif sort_order == 'oldest desc'
      group('created_at::date', 'value').count.sort
    elsif sort_order == 'count desc'
      group(:value).count.sort_by{|k,v| v}.reverse
    else
      group(:value).count.sort_by{|k,v| v}
    end
  end
end
