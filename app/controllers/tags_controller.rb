class TagsController < ApplicationController

  def create_new_tag(tag_name)
    if Tag.all.include? tag_name
      return Tag.find_by_name(tag_name)
    else
    Tag.create(:name => tag_name)
    end
  end

end