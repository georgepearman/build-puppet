# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
class toplevel::slave::test inherits toplevel::slave {
    include talos
    include vnc
    include users::builder::autologin
    include ntp::atboot
    include packages::fonts
    include tweaks::fonts
    include tweaks::cleanup
    include dirs::builds::hg_shared
    include dirs::builds::git_shared
    class {
        'slave_secrets':
            slave_type => 'test';
    }
}
