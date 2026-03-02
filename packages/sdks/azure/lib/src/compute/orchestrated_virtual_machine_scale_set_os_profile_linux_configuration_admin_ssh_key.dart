// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationAdminSshKey {
  /// The Public Key which should be used for authentication, which needs to be in `ssh-rsa` format with at least 2048-bit or in `ssh-ed25519` format.
  final pulumi.Input<String> publicKey;
  /// The Username for which this Public SSH Key should be configured.
  ///
  /// > **Note:** The Azure VM Agent only allows creating SSH Keys at the path `/home/{username}/.ssh/authorized_keys` - as such this public key will be written to the authorized keys file.
  final pulumi.Input<String> username;

  /// Creates a new [OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationAdminSshKey].
  /// [publicKey] The Public Key which should be used for authentication, which needs to be in `ssh-rsa` format with at least 2048-bit or in `ssh-ed25519` format.
  /// [username] The Username for which this Public SSH Key should be configured.
  OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationAdminSshKey({
    required this.publicKey,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKey': publicKey,
      'username': username,
    };
  }

  factory OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationAdminSshKey.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetOsProfileLinuxConfigurationAdminSshKey(
      publicKey: (map['publicKey'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

