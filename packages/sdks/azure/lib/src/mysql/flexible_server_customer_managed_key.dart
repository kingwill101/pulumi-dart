// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleServerCustomerManagedKey {
  /// The ID of the geo backup Key Vault Key. It can't cross region and need Customer Managed Key in same region as geo backup.
  final pulumi.Input<String>? geoBackupKeyVaultKeyId;
  /// The geo backup user managed identity id for a Customer Managed Key. Should be added with `identity_ids`. It can't cross region and need identity in same region as geo backup.
  ///
  /// &gt; **Note:** `primary_user_assigned_identity_id` or `geo_backup_user_assigned_identity_id` is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
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
      geoBackupKeyVaultKeyId: (() { final guardedValue = map['geoBackupKeyVaultKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      geoBackupUserAssignedIdentityId: (() { final guardedValue = map['geoBackupUserAssignedIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultKeyId: (() { final guardedValue = map['keyVaultKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedHsmKeyId: (() { final guardedValue = map['managedHsmKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryUserAssignedIdentityId: (() { final guardedValue = map['primaryUserAssignedIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

