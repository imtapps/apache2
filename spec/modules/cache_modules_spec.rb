require 'spec_helper'

# @todo add support for windows
# arch_win32_modules_without_config = %w(isapi win32)
#
# arch_win32_modules_without_config.each do |mod|
#  describe "apache2::mod_#{mod}" do
#    it_should_behave_like 'an apache2 module', mod, false, supported_platforms
#  end
# end

# not supported modules: cache disk_cache file_cache mem_cache
cache_modules_without_config = %w()
cache_modules_without_config.each do |mod|
  describe "apache2::mod_#{mod}" do
    it_should_behave_like 'an apache2 module', mod, false, supported_platforms
  end
end
