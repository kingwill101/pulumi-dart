// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedDevOpsPoolVirtualMachineScaleSetFabricSecurityKeyVaultManagement {
  /// Specifies where to store certificates on the machine.
  final pulumi.Input<String>? certificateStoreLocation;
  /// Name of the certificate store to use on the machine. Possible values are `My` and `Root`.
  final pulumi.Input<String>? certificateStoreName;
  /// Defines if the key of the certificates should be exportable. Defaults to `false`.
  final pulumi.Input<bool>? keyExportEnabled;
  /// A list of `versionlessId` from Azure Key vault certificates to install on all machines in the pool.
  final pulumi.Input<List<String>> keyVaultCertificateIds;

  /// Creates a new [ManagedDevOpsPoolVirtualMachineScaleSetFabricSecurityKeyVaultManagement].
  /// [certificateStoreLocation] Specifies where to store certificates on the machine.
  /// [certificateStoreName] Name of the certificate store to use on the machine. Possible values are `My` and `Root`.
  /// [keyExportEnabled] Defines if the key of the certificates should be exportable. Defaults to `false`.
  /// [keyVaultCertificateIds] A list of `versionlessId` from Azure Key vault certificates to install on all machines in the pool.
  const ManagedDevOpsPoolVirtualMachineScaleSetFabricSecurityKeyVaultManagement({
    this.certificateStoreLocation,
    this.certificateStoreName,
    this.keyExportEnabled,
    required this.keyVaultCertificateIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateStoreLocation': ?certificateStoreLocation,
      'certificateStoreName': ?certificateStoreName,
      'keyExportEnabled': ?keyExportEnabled,
      'keyVaultCertificateIds': keyVaultCertificateIds,
    };
  }

  factory ManagedDevOpsPoolVirtualMachineScaleSetFabricSecurityKeyVaultManagement.fromMap(Map<String, dynamic> map) {
    return ManagedDevOpsPoolVirtualMachineScaleSetFabricSecurityKeyVaultManagement(
      certificateStoreLocation: (() { final guardedValue = map['certificateStoreLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateStoreName: (() { final guardedValue = map['certificateStoreName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyExportEnabled: (() { final guardedValue = map['keyExportEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyVaultCertificateIds: pulumi.Input.fromValue((map['keyVaultCertificateIds'] as List).cast<String>()),
    );
  }
}
