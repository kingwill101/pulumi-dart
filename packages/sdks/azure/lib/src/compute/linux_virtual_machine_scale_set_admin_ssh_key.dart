// ignore_for_file: unused_element, unnecessary_cast


class LinuxVirtualMachineScaleSetAdminSshKey {
  /// The Public Key which should be used for authentication, which needs to be in `ssh-rsa` format with at least 2048-bit or in `ssh-ed25519` format.
  final String publicKey;
  /// The Username for which this Public SSH Key should be configured.
  ///
  /// > **Note:** The Azure VM Agent only allows creating SSH Keys at the path `/home/{username}/.ssh/authorized_keys` - as such this public key will be added/appended to the authorized keys file.
  final String username;

  /// Creates a new [LinuxVirtualMachineScaleSetAdminSshKey].
  /// [publicKey] The Public Key which should be used for authentication, which needs to be in `ssh-rsa` format with at least 2048-bit or in `ssh-ed25519` format.
  /// [username] The Username for which this Public SSH Key should be configured.
  LinuxVirtualMachineScaleSetAdminSshKey({
    required this.publicKey,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKey': publicKey,
      'username': username,
    };
  }

  factory LinuxVirtualMachineScaleSetAdminSshKey.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineScaleSetAdminSshKey(
      publicKey: map['publicKey'] as String,
      username: map['username'] as String,
    );
  }
}

