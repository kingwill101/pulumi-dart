// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackupVaultCustomerManagedKey resources.
class BackupVaultCustomerManagedKeyState {
  /// The ID of the Backup Vault. Changing this forces a new resource to be created.
  final pulumi.Input<String>? dataProtectionBackupVaultId;
  /// The ID of the Key Vault Key which should be used to Encrypt the data in this Backup Vault.
  final pulumi.Input<String>? keyVaultKeyId;

  /// Creates a new [BackupVaultCustomerManagedKeyState].
  /// [dataProtectionBackupVaultId] The ID of the Backup Vault. Changing this forces a new resource to be created.
  /// [keyVaultKeyId] The ID of the Key Vault Key which should be used to Encrypt the data in this Backup Vault.
  BackupVaultCustomerManagedKeyState({
    this.dataProtectionBackupVaultId,
    this.keyVaultKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataProtectionBackupVaultId': ?dataProtectionBackupVaultId,
      'keyVaultKeyId': ?keyVaultKeyId,
    };
  }

  factory BackupVaultCustomerManagedKeyState.fromMap(Map<String, dynamic> map) {
    return BackupVaultCustomerManagedKeyState(
      dataProtectionBackupVaultId: map['dataProtectionBackupVaultId'] == null ? null : (map['dataProtectionBackupVaultId'] as String).input(),
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : (map['keyVaultKeyId'] as String).input(),
    );
  }
}

