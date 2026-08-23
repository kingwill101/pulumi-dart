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
  const BackupVaultCustomerManagedKeyState({
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
      dataProtectionBackupVaultId: (() { final guardedValue = map['dataProtectionBackupVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultKeyId: (() { final guardedValue = map['keyVaultKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
