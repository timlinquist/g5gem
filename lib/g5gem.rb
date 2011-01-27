require 'net/ssh'
require 'net/scp'

module G5gem
  def self.transer_file_to_server(file)
    Net::SCP.start("util1", "g5search") do |scp|
      scp.upload(File.expand_path(file), "/shared/gems/gems")
    end
  end

  def self.rebuild_index
    Net::SSH.start("util1", "g5search") do |ssh|
      ssh.exec "/usr/bin/gem generate_index -d /shared/gems"
    end
  end
end
