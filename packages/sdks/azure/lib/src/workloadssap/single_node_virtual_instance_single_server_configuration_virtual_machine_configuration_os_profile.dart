// ignore_for_file: unused_element, unnecessary_cast


class SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationOsProfile {
  /// The name of the administrator account. Changing this forces a new resource to be created.
  final String adminUsername;
  /// The SSH public key that is used to authenticate with the Virtual Machine. Changing this forces a new resource to be created.
  final String sshPrivateKey;
  /// The SSH private key that is used to authenticate with the Virtual Machine. Changing this forces a new resource to be created.
  final String sshPublicKey;

  /// Creates a new [SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationOsProfile].
  /// [adminUsername] The name of the administrator account. Changing this forces a new resource to be created.
  /// [sshPrivateKey] The SSH public key that is used to authenticate with the Virtual Machine. Changing this forces a new resource to be created.
  /// [sshPublicKey] The SSH private key that is used to authenticate with the Virtual Machine. Changing this forces a new resource to be created.
  SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationOsProfile({
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

  factory SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationOsProfile.fromMap(Map<String, dynamic> map) {
    return SingleNodeVirtualInstanceSingleServerConfigurationVirtualMachineConfigurationOsProfile(
      adminUsername: map['adminUsername'] as String,
      sshPrivateKey: map['sshPrivateKey'] as String,
      sshPublicKey: map['sshPublicKey'] as String,
    );
  }
}

