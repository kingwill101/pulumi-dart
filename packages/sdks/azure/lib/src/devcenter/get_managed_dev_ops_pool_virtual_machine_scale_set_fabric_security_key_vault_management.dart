// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedDevOpsPoolVirtualMachineScaleSetFabricSecurityKeyVaultManagement {
  /// The location where the certificates are stored.
  final pulumi.Input<String> certificateStoreLocation;
  /// The certificate store name.
  final pulumi.Input<String> certificateStoreName;
  /// Whether the keys of the certificates are exportable.
  final pulumi.Input<bool> keyExportEnabled;
  /// A list of certificates installed on the machines in the Managed DevOps Pool.
  final pulumi.Input<List<String>> keyVaultCertificateIds;

  /// Creates a new [GetManagedDevOpsPoolVirtualMachineScaleSetFabricSecurityKeyVaultManagement].
  /// [certificateStoreLocation] The location where the certificates are stored.
  /// [certificateStoreName] The certificate store name.
  /// [keyExportEnabled] Whether the keys of the certificates are exportable.
  /// [keyVaultCertificateIds] A list of certificates installed on the machines in the Managed DevOps Pool.
  const GetManagedDevOpsPoolVirtualMachineScaleSetFabricSecurityKeyVaultManagement({
    required this.certificateStoreLocation,
    required this.certificateStoreName,
    required this.keyExportEnabled,
    required this.keyVaultCertificateIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateStoreLocation': certificateStoreLocation,
      'certificateStoreName': certificateStoreName,
      'keyExportEnabled': keyExportEnabled,
      'keyVaultCertificateIds': keyVaultCertificateIds,
    };
  }

  factory GetManagedDevOpsPoolVirtualMachineScaleSetFabricSecurityKeyVaultManagement.fromMap(Map<String, dynamic> map) {
    return GetManagedDevOpsPoolVirtualMachineScaleSetFabricSecurityKeyVaultManagement(
      certificateStoreLocation: pulumi.Input.fromValue(map['certificateStoreLocation'] as String),
      certificateStoreName: pulumi.Input.fromValue(map['certificateStoreName'] as String),
      keyExportEnabled: pulumi.Input.fromValue(map['keyExportEnabled'] as bool),
      keyVaultCertificateIds: pulumi.Input.fromValue((map['keyVaultCertificateIds'] as List).cast<String>()),
    );
  }
}
