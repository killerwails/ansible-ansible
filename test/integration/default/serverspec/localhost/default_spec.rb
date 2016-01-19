require 'spec_helper'

describe 'ansible-ansible::default' do

  describe file('/etc/ansible') do
    it { should be_directory }
  end

  describe file('etc/ansible/hosts') do
    it { should exist }
  end

  describe file('/etc/ansible/ansible.cfg') do
    it { should exist }
  end

  describe package('ansible') do
    it { should be_installed.by('pip') }
  end
end
