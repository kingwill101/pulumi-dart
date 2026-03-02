// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupVaultIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Backup Vault.
  final pulumi.Input<List<String>>? identityIds;
  /// The Principal ID for the Service Principal associated with the Identity of this Backup Vault.
  final pulumi.Input<String>? principalId;
  /// The Tenant ID for the Service Principal associated with the Identity of this Backup Vault.
  final pulumi.Input<String>? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Backup Vault. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [BackupVaultIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Backup Vault.
  /// [principalId] The Principal ID for the Service Principal associated with the Identity of this Backup Vault.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Identity of this Backup Vault.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Backup Vault. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  BackupVaultIdentity({
    this.identityIds,
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': ?identityIds,
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory BackupVaultIdentity.fromMap(Map<String, dynamic> map) {
    return BackupVaultIdentity(
      identityIds: map['identityIds'] == null ? null : ((map['identityIds']! as List).cast<String>()).input(),
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

