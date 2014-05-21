module TagHelper
  def self.process_tags(tag_list)
    tag_list.split(",")
  end

  def self.save_tags(tags)
    tags.uniq.sort.join(",")
  end
end