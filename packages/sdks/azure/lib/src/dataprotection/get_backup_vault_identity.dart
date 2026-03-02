// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackupVaultIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Backup Vault.
  final pulumi.Input<List<String>> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Backup Vault.
  final pulumi.Input<String> principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Backup Vault.
  final pulumi.Input<String> tenantId;
  /// The type of Managed Service Identity that is configured on this Backup Vault.
  final pulumi.Input<String> type;

  /// Creates a new [GetBackupVaultIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Backup Vault.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Backup Vault.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Backup Vault.
  /// [type] The type of Managed Service Identity that is configured on this Backup Vault.
  GetBackupVaultIdentity({
    required this.identityIds,
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetBackupVaultIdentity.fromMap(Map<String, dynamic> map) {
    return GetBackupVaultIdentity(
      identityIds: ((map['identityIds'] as List).cast<String>()).input(),
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

