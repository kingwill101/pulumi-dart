// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleServerCustomerManagedKey {
  /// The ID of the geo backup Key Vault Key. It can't cross region and need Customer Managed Key in same region as geo backup.
  final pulumi.Input<String>? geoBackupKeyVaultKeyId;
  /// The geo backup user managed identity id for a Customer Managed Key. Should be added with `identity_ids`. It can't cross region and need identity in same region as geo backup.
  ///
  /// > **Note:** `primary_user_assigned_identity_id` or `geo_backup_user_assigned_identity_id` is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final pulumi.Input<String>? geoBackupUserAssignedIdentityId;
  /// The ID of the Key Vault Key.
  final pulumi.Input<String>? keyVaultKeyId;
  /// The ID of the Managed HSM Key.
  final pulumi.Input<String>? managedHsmKeyId;
  /// Specifies the primary user managed identity id for a Customer Managed Key. Should be added with `identity_ids`.
  final pulumi.Input<String>? primaryUserAssignedIdentityId;

  /// Creates a new [FlexibleServerCustomerManagedKey].
  /// [geoBackupKeyVaultKeyId] The ID of the geo backup Key Vault Key. It can't cross region and need Customer Managed Key in same region as geo backup.
  /// [geoBackupUserAssignedIdentityId] The geo backup user managed identity id for a Customer Managed Key. Should be added with `identity_ids`. It can't cross region and need identity in same region as geo backup.
  /// [keyVaultKeyId] The ID of the Key Vault Key.
  /// [managedHsmKeyId] The ID of the Managed HSM Key.
  /// [primaryUserAssignedIdentityId] Specifies the primary user managed identity id for a Customer Managed Key. Should be added with `identity_ids`.
  FlexibleServerCustomerManagedKey({
    this.geoBackupKeyVaultKeyId,
    this.geoBackupUserAssignedIdentityId,
    this.keyVaultKeyId,
    this.managedHsmKeyId,
    this.primaryUserAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geoBackupKeyVaultKeyId': ?geoBackupKeyVaultKeyId,
      'geoBackupUserAssignedIdentityId': ?geoBackupUserAssignedIdentityId,
      'keyVaultKeyId': ?keyVaultKeyId,
      'managedHsmKeyId': ?managedHsmKeyId,
      'primaryUserAssignedIdentityId': ?primaryUserAssignedIdentityId,
    };
  }

  factory FlexibleServerCustomerManagedKey.fromMap(Map<String, dynamic> map) {
    return FlexibleServerCustomerManagedKey(
      geoBackupKeyVaultKeyId: map['geoBackupKeyVaultKeyId'] == null ? null : (map['geoBackupKeyVaultKeyId']! as String).input(),
      geoBackupUserAssignedIdentityId: map['geoBackupUserAssignedIdentityId'] == null ? null : (map['geoBackupUserAssignedIdentityId']! as String).input(),
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : (map['keyVaultKeyId']! as String).input(),
      managedHsmKeyId: map['managedHsmKeyId'] == null ? null : (map['managedHsmKeyId']! as String).input(),
      primaryUserAssignedIdentityId: map['primaryUserAssignedIdentityId'] == null ? null : (map['primaryUserAssignedIdentityId']! as String).input(),
    );
  }
}

