// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationOsProfile {
  /// The name of the administrator account. Changing this forces a new resource to be created.
  final pulumi.Input<String> adminUsername;

  /// The SSH public key that is used to authenticate with the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String> sshPrivateKey;

  /// The SSH private key that is used to authenticate with the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String> sshPublicKey;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationOsProfile].
  /// [adminUsername] The name of the administrator account. Changing this forces a new resource to be created.
  /// [sshPrivateKey] The SSH public key that is used to authenticate with the Virtual Machine. Changing this forces a new resource to be created.
  /// [sshPublicKey] The SSH private key that is used to authenticate with the Virtual Machine. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationOsProfile({
    required this.adminUsername,
    required this.sshPrivateKey,
    required this.sshPublicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': adminUsername,
      'sshPrivateKey': sshPrivateKey,
      'sshPublicKey': sshPublicKey,
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationOsProfile.fromMap(
    Map<String, dynamic> map,
  ) {
    return ThreeTierVirtualInstanceThreeTierConfigurationDatabaseServerConfigurationVirtualMachineConfigurationOsProfile(
      adminUsername: pulumi.Input.fromValue(map['adminUsername'] as String),
      sshPrivateKey: pulumi.Input.fromValue(map['sshPrivateKey'] as String),
      sshPublicKey: pulumi.Input.fromValue(map['sshPublicKey'] as String),
    );
  }
}
