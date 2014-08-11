#
# Cookbook Name:: drush
# Recipe:: default
#
# Copyright 2014, Christopher Torgalson
#

execute "apt-get-install-drush" do
  command "apt-get install drush -y"
  not_if do
    ::File.exists?("/usr/bin/drush")
  end
end
