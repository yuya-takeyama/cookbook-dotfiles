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
  group node['dotfiles']['group']
  mode 00755
  recursive true
  action :create
end

git node['dotfiles']['directory'] do
  repository 'https://github.com/yuya-takeyama/dotfiles.git'
  reference 'master'
  # enable_submodules true
  user node['dotfiles']['user']
  action :sync
end

execute 'Install dotfiles' do
  cwd node['dotfiles']['directory']
  command 'sh install.sh'
  user node['dotfiles']['user']
end
