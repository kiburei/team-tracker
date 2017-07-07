class Member
  attr_reader(:full_name, :skill)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:full_name)
    @skill = attributes.fetch(:skill)
  end
end
