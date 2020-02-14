module ApplicationHelper
  def value_helper(value)
    # value ? value : ''
    value || ''
  end

  def flash_values(flash)
    
    @flash = { class: flash.keys[0], content: flash[flash.keys[0]] }
  end
end
