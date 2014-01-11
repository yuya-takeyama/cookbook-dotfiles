#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2014, Yuya Takeyama
#
# All rights reserved - Do Not Redistribute
#
directory node['dotfiles']['directory'] do
  owner node['dotfiles']['user']
  mode 00644
  recursive true
  action :create
end

git node['dotfiles']['directory'] do
  repository 'https://github.com/yuya-takeyama/dotfiles.git'
  reference 'master'
  enable_submodules true
  user node['dotfiles']['user']
  action :sync
end
