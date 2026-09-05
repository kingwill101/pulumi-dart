// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupVaultIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Backup Vault.
  final pulumi.Input<List<String>?>? identityIds;
  /// The Principal ID for the Service Principal associated with the Identity of this Backup Vault.
  final pulumi.Input<String?>? principalId;
  /// The Tenant ID for the Service Principal associated with the Identity of this Backup Vault.
  final pulumi.Input<String?>? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Backup Vault. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [BackupVaultIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Backup Vault.
  /// [principalId] The Principal ID for the Service Principal associated with the Identity of this Backup Vault.
  /// [tenantId] The Tenant ID for the Service Principal associated with the Identity of this Backup Vault.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Backup Vault. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  const BackupVaultIdentity({
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
      identityIds: (() { final guardedValue = map['identityIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
