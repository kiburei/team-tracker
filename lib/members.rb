class Member
  @@members = []
  attr_reader(:full_name, :skill, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:full_name)
    @skill = attributes.fetch(:skill)
    @id = @@members.length.+(1)
  end

  define_method(:save)do
    @@members.push(self)
  end

  define_singleton_method(:all) do
    @@members
  end

  define_singleton_method(:clear) do
    @@members = []
  end

  define_singleton_method(:find) do |member_id|
    search_member = nil
    @@members.each do |member|
      if member.id == member_id
        search_member = member
    end
  end
  search_member
  end


end
