// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackupInstanceDataLakeStorage resources.
class BackupInstanceDataLakeStorageState {
  /// The ID of the Backup Policy.
  final pulumi.Input<String?>? backupPolicyDataLakeStorageId;
  /// The ID of the Backup Vault within which the Backup Instance Data Lake Storage should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? dataProtectionBackupVaultId;
  /// The location of the source Storage Account. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The name which should be used for this Backup Instance Data Lake Storage. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The protection state of the Backup Instance Data Lake Storage.
  final pulumi.Input<String?>? protectionState;
  /// The ID of the source Storage Account. The Storage Account must have Hierarchical Namespace enabled. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? storageAccountId;
  /// The names of the storage containers of the source Storage Account.
  final pulumi.Input<List<String>?>? storageContainerNames;

  /// Creates a new [BackupInstanceDataLakeStorageState].
  /// [backupPolicyDataLakeStorageId] The ID of the Backup Policy.
  /// [dataProtectionBackupVaultId] The ID of the Backup Vault within which the Backup Instance Data Lake Storage should exist. Changing this forces a new resource to be created.
  /// [location] The location of the source Storage Account. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Backup Instance Data Lake Storage. Changing this forces a new resource to be created.
  /// [protectionState] The protection state of the Backup Instance Data Lake Storage.
  /// [storageAccountId] The ID of the source Storage Account. The Storage Account must have Hierarchical Namespace enabled. Changing this forces a new resource to be created.
  /// [storageContainerNames] The names of the storage containers of the source Storage Account.
  const BackupInstanceDataLakeStorageState({
    this.backupPolicyDataLakeStorageId,
    this.dataProtectionBackupVaultId,
    this.location,
    this.name,
    this.protectionState,
    this.storageAccountId,
    this.storageContainerNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyDataLakeStorageId': ?backupPolicyDataLakeStorageId,
      'dataProtectionBackupVaultId': ?dataProtectionBackupVaultId,
      'location': ?location,
      'name': ?name,
      'protectionState': ?protectionState,
      'storageAccountId': ?storageAccountId,
      'storageContainerNames': ?storageContainerNames,
    };
  }

  factory BackupInstanceDataLakeStorageState.fromMap(Map<String, dynamic> map) {
    return BackupInstanceDataLakeStorageState(
      backupPolicyDataLakeStorageId: (() { final guardedValue = map['backupPolicyDataLakeStorageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataProtectionBackupVaultId: (() { final guardedValue = map['dataProtectionBackupVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectionState: (() { final guardedValue = map['protectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageContainerNames: (() { final guardedValue = map['storageContainerNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
