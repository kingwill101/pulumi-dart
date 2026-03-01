// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault {
  /// The URL to the Key Vault Secret which stores the protected settings.
  final String secretUrl;
  /// The ID of the source Key Vault.
  final String sourceVaultId;

  /// Creates a new [VirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault].
  /// [secretUrl] The URL to the Key Vault Secret which stores the protected settings.
  /// [sourceVaultId] The ID of the source Key Vault.
  VirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault({
    required this.secretUrl,
    required this.sourceVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': secretUrl,
      'sourceVaultId': sourceVaultId,
    };
  }

  factory VirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault.fromMap(Map<String, dynamic> map) {
    return VirtualMachineScaleSetExtensionProtectedSettingsFromKeyVault(
      secretUrl: map['secretUrl'] as String,
      sourceVaultId: map['sourceVaultId'] as String,
    );
  }
}

