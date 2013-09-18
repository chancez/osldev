#
# Cookbook Name:: osldev
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "yum::ius"
include_recipe "python"

package "python27" do
  action :install
end

always_install = ['git']
packages = (node['osldev']['packages'] + always_install).uniq

# install system packages
packages.each do |pkg|
  package pkg do
    action :install
  end
end

always_install = ['flake8', 'virtualenvwrapper']
python_packages = (node['osldev']['python_packages'] + always_install).uniq

# install packages using pip
python_packages.each do |pkg|
  python_pip pkg do
    action :install
  end
end