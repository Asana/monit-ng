# Matchers for ChefSpec 3

if defined?(ChefSpec)
  ChefSpec.define_matcher(:monit_check)

  def create_monit_check(check)
    ChefSpec::Matchers::ResourceMatcher.new(:monit_check, :create, check)
  end

  def remove_monit_check(check)
    ChefSpec::Matchers::ResourceMatcher.new(:monit_check, :remove, check)
  end

  def create_monit_disk(check)
    ChefSpec::Matchers::ResourceMatcher.new(:monit_disk, :create, check)
  end

  def remove_monit_disk(check)
    ChefSpec::Matchers::ResourceMatcher.new(:monit_disk, :remove, check)
  end
end
