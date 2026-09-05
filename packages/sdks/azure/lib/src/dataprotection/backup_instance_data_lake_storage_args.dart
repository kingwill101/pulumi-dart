// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataprotection_backup_instance_data_lake_storage_backup_instance_data_lake_storage_args_doc}
/// The set of arguments for BackupInstanceDataLakeStorage.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_backup_instance_data_lake_storage_backup_instance_data_lake_storage_args_doc}
class BackupInstanceDataLakeStorageArgs {
  /// The ID of the Backup Policy.
  final pulumi.Input<String> backupPolicyDataLakeStorageId;
  /// The ID of the Backup Vault within which the Backup Instance Data Lake Storage should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> dataProtectionBackupVaultId;
  /// The location of the source Storage Account. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The name which should be used for this Backup Instance Data Lake Storage. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The ID of the source Storage Account. The Storage Account must have Hierarchical Namespace enabled. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageAccountId;
  /// The names of the storage containers of the source Storage Account.
  final pulumi.Input<List<String>> storageContainerNames;

  /// Creates a new [BackupInstanceDataLakeStorageArgs].
  /// [backupPolicyDataLakeStorageId] The ID of the Backup Policy.
  /// [dataProtectionBackupVaultId] The ID of the Backup Vault within which the Backup Instance Data Lake Storage should exist. Changing this forces a new resource to be created.
  /// [location] The location of the source Storage Account. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Backup Instance Data Lake Storage. Changing this forces a new resource to be created.
  /// [storageAccountId] The ID of the source Storage Account. The Storage Account must have Hierarchical Namespace enabled. Changing this forces a new resource to be created.
  /// [storageContainerNames] The names of the storage containers of the source Storage Account.
  const BackupInstanceDataLakeStorageArgs({
    required this.backupPolicyDataLakeStorageId,
    required this.dataProtectionBackupVaultId,
    this.location,
    this.name,
    required this.storageAccountId,
    required this.storageContainerNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyDataLakeStorageId': backupPolicyDataLakeStorageId,
      'dataProtectionBackupVaultId': dataProtectionBackupVaultId,
      'location': ?location,
      'name': ?name,
      'storageAccountId': storageAccountId,
      'storageContainerNames': storageContainerNames,
    };
  }

  factory BackupInstanceDataLakeStorageArgs.fromMap(Map<String, dynamic> map) {
    return BackupInstanceDataLakeStorageArgs(
      backupPolicyDataLakeStorageId: pulumi.Input.fromValue(map['backupPolicyDataLakeStorageId'] as String),
      dataProtectionBackupVaultId: pulumi.Input.fromValue(map['dataProtectionBackupVaultId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
      storageContainerNames: pulumi.Input.fromValue((map['storageContainerNames'] as List).cast<String>()),
    );
  }
}
