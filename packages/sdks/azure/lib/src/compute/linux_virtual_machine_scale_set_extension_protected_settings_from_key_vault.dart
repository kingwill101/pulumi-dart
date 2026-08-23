// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault {
  /// The URL to the Key Vault Secret which stores the protected settings.
  final pulumi.Input<String> secretUrl;
  /// The ID of the source Key Vault.
  final pulumi.Input<String> sourceVaultId;

  /// Creates a new [LinuxVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault].
  /// [secretUrl] The URL to the Key Vault Secret which stores the protected settings.
  /// [sourceVaultId] The ID of the source Key Vault.
  const LinuxVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault({
    required this.secretUrl,
    required this.sourceVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': secretUrl,
      'sourceVaultId': sourceVaultId,
    };
  }

  factory LinuxVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault(
      secretUrl: pulumi.Input.fromValue(map['secretUrl'] as String),
      sourceVaultId: pulumi.Input.fromValue(map['sourceVaultId'] as String),
    );
  }
}
