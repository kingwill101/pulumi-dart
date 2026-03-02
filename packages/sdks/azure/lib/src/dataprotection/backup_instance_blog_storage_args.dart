// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataprotection_backup_instance_blog_storage_backup_instance_blog_storage_args_doc}
/// The set of arguments for BackupInstanceBlogStorage.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_backup_instance_blog_storage_backup_instance_blog_storage_args_doc}
class BackupInstanceBlogStorageArgs {
  /// The ID of the Backup Policy.
  final pulumi.Input<String> backupPolicyId;
  /// The location of the source Storage Account. Changing this forces a new Backup Instance Blob Storage to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Backup Instance Blob Storage. Changing this forces a new Backup Instance Blob Storage to be created.
  final pulumi.Input<String>? name;
  /// The list of the container names of the source Storage Account.
  ///
  /// > **Note:** The `storage_account_container_names` should be specified in the vaulted backup policy/operational and vaulted hybrid backup policy. Removing the `storage_account_container_names` will force a new resource to be created since it can't be removed once specified.
  final pulumi.Input<List<String>>? storageAccountContainerNames;
  /// The ID of the source Storage Account. Changing this forces a new Backup Instance Blob Storage to be created.
  final pulumi.Input<String> storageAccountId;
  /// The ID of the Backup Vault within which the Backup Instance Blob Storage should exist. Changing this forces a new Backup Instance Blob Storage to be created.
  final pulumi.Input<String> vaultId;

  /// Creates a new [BackupInstanceBlogStorageArgs].
  /// [backupPolicyId] The ID of the Backup Policy.
  /// [location] The location of the source Storage Account. Changing this forces a new Backup Instance Blob Storage to be created.
  /// [name] The name which should be used for this Backup Instance Blob Storage. Changing this forces a new Backup Instance Blob Storage to be created.
  /// [storageAccountContainerNames] The list of the container names of the source Storage Account.
  /// [storageAccountId] The ID of the source Storage Account. Changing this forces a new Backup Instance Blob Storage to be created.
  /// [vaultId] The ID of the Backup Vault within which the Backup Instance Blob Storage should exist. Changing this forces a new Backup Instance Blob Storage to be created.
  BackupInstanceBlogStorageArgs({
    required this.backupPolicyId,
    this.location,
    this.name,
    this.storageAccountContainerNames,
    required this.storageAccountId,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyId': backupPolicyId,
      'location': ?location,
      'name': ?name,
      'storageAccountContainerNames': ?storageAccountContainerNames,
      'storageAccountId': storageAccountId,
      'vaultId': vaultId,
    };
  }

  factory BackupInstanceBlogStorageArgs.fromMap(Map<String, dynamic> map) {
    return BackupInstanceBlogStorageArgs(
      backupPolicyId: (map['backupPolicyId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      storageAccountContainerNames: map['storageAccountContainerNames'] == null ? null : ((map['storageAccountContainerNames'] as List).cast<String>()).input(),
      storageAccountId: (map['storageAccountId'] as String).input(),
      vaultId: (map['vaultId'] as String).input(),
    );
  }
}

