%include /run/install/repo/ks/cisco/pre-select.ks


# System authorization information
auth --enableshadow --passalgo=sha512
# Use CDROM installation media
install
cdrom
# Use cmdline install
text
# Keyboard layouts
keyboard --vckeymap=us --xlayouts='us'
# System language
lang en_US.UTF-8
# Zeroize the Master Boot Record
zerombr
# Currently required to disabled SELINUX for Kubernetes
selinux --disabled
# Reboot when complete
reboot

%include /run/install/repo/ks/cisco/network.ks

# Root password
rootpw --plaintext open.local.box
# System timezone
timezone America/New_York --isUtc
# System bootloader configuration


%include /run/install/repo/ks/cisco/storage.ks

%include /run/install/repo/ks/cisco/packages.ks

%include /run/install/repo/ks/cisco/post-nochroot.ks

%include /run/install/repo/ks/cisco/post-chroot.ks

