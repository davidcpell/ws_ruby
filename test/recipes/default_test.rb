# # encoding: utf-8

# Inspec test for recipe ws_ruby::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe directory('/usr/local/rbenv/versions/2.2.2') do
  it { should exist }
end

describe command('bash -l -c "rbenv global"') do 
  its('stdout') { should eq "2.2.2\n" }
end

describe user('david') do 
  its('groups') { should include 'rbenv' }
end

describe command('runuser -l david -c "rbenv global"') do 
  its('stdout') { should eq "2.2.2\n" }
end
