# # encoding: utf-8

# Inspec test for recipe apache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  describe user('root') do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port('80') do
  it { should be_listening }
end


describe port('22') do
  #its('processes') { should include 'sshd' }
  its('protocols') { should include 'tcp' }
  its('addresses') { should include '0.0.0.0' }
end

describe command('curl localhost') do
   its('stdout') { should match ('Hello Rakuten !!!') }
end

