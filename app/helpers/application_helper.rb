module ApplicationHelper
  def value_helper(value)
    # value ? value : ''
    value || ''
  end
end
