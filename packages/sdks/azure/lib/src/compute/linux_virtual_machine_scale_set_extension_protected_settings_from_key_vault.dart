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
  LinuxVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault({
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
      secretUrl: (map['secretUrl'] as String).input(),
      sourceVaultId: (map['sourceVaultId'] as String).input(),
    );
  }
}

