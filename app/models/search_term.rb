class SearchTerm < ApplicationRecord
  validates :value, presence: true

  def self.value_count
    group(:value).order(value: :asc).count
  end

  def self.sort_title_desc
    group(:value).order(value: :desc).count
  end

  def self.sort_title_asc
    group(:value).order(value: :asc).count
  end

  def self.oldest
    group('created_at::date', 'value').count.sort
  end

  def self.count_desc
    group(:value).count.sort_by{|k,v| v}.reverse
  end

  def self.count_asc
    group(:value).count.sort_by{|k,v| v}
  end

  def self.sort_list(sort_order)
    case
      when (sort_order == 'title desc' || sort_order.blank?) then sort_title_desc
      when sort_order == 'title asc' then sort_title_asc
      when sort_order == 'oldest' then oldest
      when sort_order == 'count desc' then count_desc
    else
      count_asc
    end
  end
end
