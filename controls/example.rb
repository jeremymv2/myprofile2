# encoding: utf-8
# copyright: 2015, The Authors
# license: All rights reserved

include_controls 'my-profile' do
  control 'tmp-1.0' do
    title 'Create /var/tmp directory'             # A human-readable title
    desc  "The /var/tmp directory is a world-writable directory used for temporary storage by all users and some applications."
    impact 1.0
    describe mount("/var/tmp") do
      it { should be_directory }
    end
  end
end

