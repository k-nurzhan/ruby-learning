# frozen_string_literal: true

def paginate(items, page: 1, per_page: 3)
  offset = per_page * (page - 1)
  items[offset, per_page] || []
end
