// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleServerCustomerManagedKey {
  /// The versioned/versionless ID of the geo backup Key Vault Key.
  ///
  /// > **Note:** The key vault in which this key exists must be in the same region as the geo-redundant backup.
  final pulumi.Input<String>? geoBackupKeyVaultKeyId;
  /// The geo backup user managed identity id for a Customer Managed Key. Must be added to `identity.identity_ids`.
  ///
  /// > **Note:** This managed identity cannot be the same as `primary_user_assigned_identity_id`, additionally this identity must be created in the same region as the geo-redundant backup.
  ///
  /// > **Note:** `primary_user_assigned_identity_id` or `geo_backup_user_assigned_identity_id` is required when `type` is set to `UserAssigned`.
  final pulumi.Input<String>? geoBackupUserAssignedIdentityId;
  /// The versioned/versionless ID of the Key Vault Key.
  final pulumi.Input<String> keyVaultKeyId;
  /// Specifies the primary user managed identity id for a Customer Managed Key. Must be added to `identity.identity_ids`.
  final pulumi.Input<String>? primaryUserAssignedIdentityId;

  /// Creates a new [FlexibleServerCustomerManagedKey].
  /// [geoBackupKeyVaultKeyId] The versioned/versionless ID of the geo backup Key Vault Key.
  /// [geoBackupUserAssignedIdentityId] The geo backup user managed identity id for a Customer Managed Key. Must be added to `identity.identity_ids`.
  /// [keyVaultKeyId] The versioned/versionless ID of the Key Vault Key.
  /// [primaryUserAssignedIdentityId] Specifies the primary user managed identity id for a Customer Managed Key. Must be added to `identity.identity_ids`.
  FlexibleServerCustomerManagedKey({
    this.geoBackupKeyVaultKeyId,
    this.geoBackupUserAssignedIdentityId,
    required this.keyVaultKeyId,
    this.primaryUserAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'geoBackupKeyVaultKeyId': ?geoBackupKeyVaultKeyId,
      'geoBackupUserAssignedIdentityId': ?geoBackupUserAssignedIdentityId,
      'keyVaultKeyId': keyVaultKeyId,
      'primaryUserAssignedIdentityId': ?primaryUserAssignedIdentityId,
    };
  }

  factory FlexibleServerCustomerManagedKey.fromMap(Map<String, dynamic> map) {
    return FlexibleServerCustomerManagedKey(
      geoBackupKeyVaultKeyId: map['geoBackupKeyVaultKeyId'] == null ? null : (map['geoBackupKeyVaultKeyId'] as String).input(),
      geoBackupUserAssignedIdentityId: map['geoBackupUserAssignedIdentityId'] == null ? null : (map['geoBackupUserAssignedIdentityId'] as String).input(),
      keyVaultKeyId: (map['keyVaultKeyId'] as String).input(),
      primaryUserAssignedIdentityId: map['primaryUserAssignedIdentityId'] == null ? null : (map['primaryUserAssignedIdentityId'] as String).input(),
    );
  }
}

