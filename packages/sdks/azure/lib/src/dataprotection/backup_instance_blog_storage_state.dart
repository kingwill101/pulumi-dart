// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackupInstanceBlogStorage resources.
class BackupInstanceBlogStorageState {
  /// The ID of the Backup Policy.
  final pulumi.Input<String>? backupPolicyId;
  /// The location of the source Storage Account. Changing this forces a new Backup Instance Blob Storage to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Backup Instance Blob Storage. Changing this forces a new Backup Instance Blob Storage to be created.
  final pulumi.Input<String>? name;
  /// The protection state of the Backup Instance Blob Storage.
  final pulumi.Input<String>? protectionState;
  /// The list of the container names of the source Storage Account.
  ///
  /// > **Note:** The `storage_account_container_names` should be specified in the vaulted backup policy/operational and vaulted hybrid backup policy. Removing the `storage_account_container_names` will force a new resource to be created since it can't be removed once specified.
  final pulumi.Input<List<String>>? storageAccountContainerNames;
  /// The ID of the source Storage Account. Changing this forces a new Backup Instance Blob Storage to be created.
  final pulumi.Input<String>? storageAccountId;
  /// The ID of the Backup Vault within which the Backup Instance Blob Storage should exist. Changing this forces a new Backup Instance Blob Storage to be created.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [BackupInstanceBlogStorageState].
  /// [backupPolicyId] The ID of the Backup Policy.
  /// [location] The location of the source Storage Account. Changing this forces a new Backup Instance Blob Storage to be created.
  /// [name] The name which should be used for this Backup Instance Blob Storage. Changing this forces a new Backup Instance Blob Storage to be created.
  /// [protectionState] The protection state of the Backup Instance Blob Storage.
  /// [storageAccountContainerNames] The list of the container names of the source Storage Account.
  /// [storageAccountId] The ID of the source Storage Account. Changing this forces a new Backup Instance Blob Storage to be created.
  /// [vaultId] The ID of the Backup Vault within which the Backup Instance Blob Storage should exist. Changing this forces a new Backup Instance Blob Storage to be created.
  BackupInstanceBlogStorageState({
    this.backupPolicyId,
    this.location,
    this.name,
    this.protectionState,
    this.storageAccountContainerNames,
    this.storageAccountId,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyId': ?backupPolicyId,
      'location': ?location,
      'name': ?name,
      'protectionState': ?protectionState,
      'storageAccountContainerNames': ?storageAccountContainerNames,
      'storageAccountId': ?storageAccountId,
      'vaultId': ?vaultId,
    };
  }

  factory BackupInstanceBlogStorageState.fromMap(Map<String, dynamic> map) {
    return BackupInstanceBlogStorageState(
      backupPolicyId: map['backupPolicyId'] == null ? null : (map['backupPolicyId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      protectionState: map['protectionState'] == null ? null : (map['protectionState'] as String).input(),
      storageAccountContainerNames: map['storageAccountContainerNames'] == null ? null : ((map['storageAccountContainerNames'] as List).cast<String>()).input(),
      storageAccountId: map['storageAccountId'] == null ? null : (map['storageAccountId'] as String).input(),
      vaultId: map['vaultId'] == null ? null : (map['vaultId'] as String).input(),
    );
  }
}

