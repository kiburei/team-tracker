class Member
  @@members = []
  attr_reader(:full_name, :skill)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:full_name)
    @skill = attributes.fetch(:skill)
  end

  define_method(:save)do
    @@members.push(self)
  end

  define_singleton_method(:all) do
    @@members
  end

end
