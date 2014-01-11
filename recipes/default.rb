#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright 2014, Yuya Takeyama
#
# All rights reserved - Do Not Redistribute
#
dotfiles_user = nodes[:dotfiles][:user] || 'vagrant'
dotfiles_directory = nodes[:dotfiles][:directory] || "/home/#{dotfiles_user}/.dotfiles"

directory '.dotfiles' do
  owner dotfiles_user
  mode 00644
  recursive true
  action :create
end

git dotfiles_directory do
  repository 'https://github.com/yuya-takeyama/dotfiles.git'
  reference 'master'
  enable_submodules true
  user dotfile_user
  action :sync
end
