// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataprotection_backup_vault_customer_managed_key_backup_vault_customer_managed_key_args_doc}
/// The set of arguments for BackupVaultCustomerManagedKey.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_backup_vault_customer_managed_key_backup_vault_customer_managed_key_args_doc}
class BackupVaultCustomerManagedKeyArgs {
  /// The ID of the Backup Vault. Changing this forces a new resource to be created.
  final pulumi.Input<String> dataProtectionBackupVaultId;
  /// The ID of the Key Vault Key which should be used to Encrypt the data in this Backup Vault.
  final pulumi.Input<String> keyVaultKeyId;

  /// Creates a new [BackupVaultCustomerManagedKeyArgs].
  /// [dataProtectionBackupVaultId] The ID of the Backup Vault. Changing this forces a new resource to be created.
  /// [keyVaultKeyId] The ID of the Key Vault Key which should be used to Encrypt the data in this Backup Vault.
  const BackupVaultCustomerManagedKeyArgs({
    required this.dataProtectionBackupVaultId,
    required this.keyVaultKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataProtectionBackupVaultId': dataProtectionBackupVaultId,
      'keyVaultKeyId': keyVaultKeyId,
    };
  }

  factory BackupVaultCustomerManagedKeyArgs.fromMap(Map<String, dynamic> map) {
    return BackupVaultCustomerManagedKeyArgs(
      dataProtectionBackupVaultId: pulumi.Input.fromValue(map['dataProtectionBackupVaultId'] as String),
      keyVaultKeyId: pulumi.Input.fromValue(map['keyVaultKeyId'] as String),
    );
  }
}

