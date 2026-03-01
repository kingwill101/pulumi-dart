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
    pulumi.Output<String>? backupPolicyId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? protectionState,
    pulumi.Output<List<String>>? storageAccountContainerNames,
    pulumi.Output<String>? storageAccountId,
    pulumi.Output<String>? vaultId,
  }) :
      backupPolicyId = pulumi.Input.asOptionalInput<String>(backupPolicyId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      protectionState = pulumi.Input.asOptionalInput<String>(protectionState),
      storageAccountContainerNames = pulumi.Input.asOptionalInput<List<String>>(storageAccountContainerNames),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId),
      vaultId = pulumi.Input.asOptionalInput<String>(vaultId);

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
      backupPolicyId: map['backupPolicyId'] == null ? null : pulumi.Output.create<String>(map['backupPolicyId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protectionState: map['protectionState'] == null ? null : pulumi.Output.create<String>(map['protectionState'] as String),
      storageAccountContainerNames: map['storageAccountContainerNames'] == null ? null : pulumi.Output.create<List<String>>((map['storageAccountContainerNames'] as List).cast<String>()),
      storageAccountId: map['storageAccountId'] == null ? null : pulumi.Output.create<String>(map['storageAccountId'] as String),
      vaultId: map['vaultId'] == null ? null : pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

