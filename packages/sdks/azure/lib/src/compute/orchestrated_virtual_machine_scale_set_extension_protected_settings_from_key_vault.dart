// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrchestratedVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault {
  /// The URL to the Key Vault Secret which stores the protected settings.
  final pulumi.Input<String> secretUrl;

  /// The ID of the source Key Vault.
  final pulumi.Input<String> sourceVaultId;

  /// Creates a new [OrchestratedVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault].
  /// [secretUrl] The URL to the Key Vault Secret which stores the protected settings.
  /// [sourceVaultId] The ID of the source Key Vault.
  OrchestratedVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault({
    required this.secretUrl,
    required this.sourceVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': secretUrl,
      'sourceVaultId': sourceVaultId,
    };
  }

  factory OrchestratedVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault.fromMap(
    Map<String, dynamic> map,
  ) {
    return OrchestratedVirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault(
      secretUrl: pulumi.Input.fromValue(map['secretUrl'] as String),
      sourceVaultId: pulumi.Input.fromValue(map['sourceVaultId'] as String),
    );
  }
}
