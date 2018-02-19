module TopicTagsMixin
  def self.included(klass)
    klass.attributes :tags
  end

  def include_tags?
    SiteSetting.tagging_enabled && (!object.private_message? || scope.user&.staff?)
  end

  def tags
    object.tags.pluck(:name)
  end
end
