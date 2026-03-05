// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxVirtualMachineAdminSshKey {
  /// The Public Key which should be used for authentication, which needs to be in `ssh-rsa` format with at least 2048-bit or in `ssh-ed25519` format. Changing this forces a new resource to be created.
  final pulumi.Input<String> publicKey;
  /// The Username for which this Public SSH Key should be configured. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** The Azure VM Agent only allows creating SSH Keys at the path `/home/{username}/.ssh/authorized_keys` - as such this public key will be written to the authorized keys file.
  final pulumi.Input<String> username;

  /// Creates a new [LinuxVirtualMachineAdminSshKey].
  /// [publicKey] The Public Key which should be used for authentication, which needs to be in `ssh-rsa` format with at least 2048-bit or in `ssh-ed25519` format. Changing this forces a new resource to be created.
  /// [username] The Username for which this Public SSH Key should be configured. Changing this forces a new resource to be created.
  LinuxVirtualMachineAdminSshKey({
    required this.publicKey,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKey': publicKey,
      'username': username,
    };
  }

  factory LinuxVirtualMachineAdminSshKey.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineAdminSshKey(
      publicKey: pulumi.Input.fromValue(map['publicKey'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

